package com.mycompany.webapp.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.Board;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/board")
@Slf4j
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/list")
	public Map<String, Object> list(@RequestParam(defaultValue = "1") int pageNo) {
		int totalRows = boardService.getCount();
		Pager pager = new Pager(10, 5, totalRows, pageNo);
		List<Board> list = boardService.getList(pager);

		// 여러 객체를 리턴하기 위해 map 객체 생성 (board, pager)
		Map<String, Object> map = new HashMap<>();
		map.put("boards", list);
		map.put("pager", pager);
		return map; // { "boards" : {}, "pager" : {}}
	}
	
	// @Secured("ROLE_USER") : boot 2.7과 3.x에서 동작 X
	@PreAuthorize("hasAuthority('ROLE_USER')")
	@PostMapping("/create")
	public Board create(Board board, Authentication authentication) {
		if (board.getBattach() != null && !board.getBattach().isEmpty()) {
			MultipartFile mf = board.getBattach();
			board.setBattachoname(mf.getOriginalFilename());
			board.setBattachtype(mf.getContentType());
			try {
				board.setBattachdata(mf.getBytes());
			} catch (IOException e) {
			}
		}

		// db에 저장
		board.setBwriter(authentication.getName());
		boardService.insert(board);

		// JSON으로 변환되지 않는 필드는 NULL 처리
		board.setBattach(null);
		board.setBattachdata(null);
		return board;
	}
	
	@PreAuthorize("hasAuthority('ROLE_USER')")
	@GetMapping("/read/{bno}") // http://localhost/read/5
	public Board read(@PathVariable int bno) {
		Board board = boardService.getBoard(bno);

		// JSON으로 변환되지 않는 필드는 NULL 처리
		board.setBattach(null);
		return board;
	}
	
	@PreAuthorize("hasAuthority('ROLE_USER')")
	@PutMapping("/update")
	public Board update(Board board) {
		if (board.getBattach() != null && !board.getBattach().isEmpty()) {
			MultipartFile mf = board.getBattach();
			board.setBattachoname(mf.getOriginalFilename());
			board.setBattachtype(mf.getContentType());
			try {
				board.setBattachdata(mf.getBytes());
			} catch (IOException e) {
			}
		}
		boardService.update(board);

		// 수정된 내용의 board 객체 얻기
		board = boardService.getBoard(board.getBno());
		board.setBattach(null);
		return board;
	}
	
	@PreAuthorize("hasAuthority('ROLE_USER')")
	@DeleteMapping("/delete/{bno}")
	public void delete(@PathVariable int bno) {
		boardService.delete(bno);
	}
	
	@PreAuthorize("hasAuthority('ROLE_USER')")
	@GetMapping("/battach/{bno}")
	public void download(@PathVariable int bno, HttpServletResponse response) {
		Board board = boardService.getBoard(bno);

		// 파일 이름이 한글일 경우, 브라우저에서 한글 이름으로 다운로드 받기 위해 헤더에 추가할 내용
		try {
			String fileName = new String(board.getBattachoname().getBytes("UTF-8"), "ISO-8859-1");
			response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");

			// 파일 타입을 헤더에 추가
			response.setContentType(board.getBattachtype());

			// 응답 바디에 파일 데이터를 출력
			OutputStream os = response.getOutputStream();
			os.write(board.getBattachdata());
			os.flush();
			os.close();
		} catch (IOException e) {
			log.error(e.getMessage());
		}

	}
}