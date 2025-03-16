package com.mycompany.springframework;

import javax.transaction.Transactional;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;
import org.springframework.test.context.junit4.SpringRunner;

// Test 메소드를 실행시켜 주는 Runner 지정 
@RunWith(SpringRunner.class)

// Spring 설정 파일 적용
@SpringJUnitWebConfig(locations={
    "classpath:spring/root/*.xml",
    "classpath:spring/dispatcher/*.xml"
})

// DB 연동 시 테스트 후에 롤백을 해서 DB의 상태를 유지
@Transactional
@Rollback(true) // 기본값이 true

public class Ch16JUnitTest {
  
}
