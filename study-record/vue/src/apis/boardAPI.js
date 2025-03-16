import axios from "axios";
import qs from "qs";

// 게시물 목록 가져오기
function getBoardList(pageNo = 1) {
    // get : http://localhost/board/list?pageNo=1
    return axios.get("/board/list", {params: {pageNo}});
}

// 게시물 쓰기
function boardWrite(formData) {
    // multipart/form-data로 데이터 전송
    return axios.post("/board/create", formData);
}

// 게시물 읽기
function boardRead(bno) {
    // PathVariable로 데이터 전송
    return axios.get("/board/read/" + bno);
}

// 첨부 다운로드 
function boardAttachDownload(bno) {
    // PathVariable로 데이터 전송
    return axios.get("/board/battach/" + bno, {responseType:"blob"});
}

// 게시물 삭제
function boardDelete(bno) {
    // PathVariable로 데이터 전송
    return axios.delete("/board/delete/" + bno);
}

function boardUpdate(formData) {
        // multipart/form-data로 데이터 전송
        return axios.put("/board/update", formData);
}

export default {
    getBoardList,
    boardWrite,
    boardRead,
    boardAttachDownload,
    boardDelete,
    boardUpdate
};