<template>
    <div class="card">
      <div class="card-header">BoardList</div>
      <div class="card-body">
        <div class="mb-3" v-if="$store.state.userId !== ''">
          <RouterLink to="/Ch08RestAPI/Exam04Board/BoardWrite" class="btn btn-success btn-sm">글쓰기</RouterLink>
        </div>
  
        <table class="table table-striped table-bordered">
          <thead>
            <th class="text-center" style="width: 70px">번호</th>
            <th class="text-center">제목</th>
            <th class="text-center" style="width: 90px">글쓴이</th>
            <th class="text-center" style="width: 120px">날짜</th>
            <th class="text-center" style="width: 70px">조회수</th>
          </thead>
          <tbody>
            <tr v-for="board in page.boards" :key="board.bno">
              <td class="text-center">{{ board.bno }}</td>
              <td>
                <RouterLink :to="`/Ch08RestAPI/Exam04Board/BoardRead?bno=${board.bno}&pageNo=${pageNo}`">{{ board.btitle }}</RouterLink>
              </td>
              <td class="text-center">{{ board.bwriter }}</td>
              <td class="text-center">{{ board.bdate }}</td>
              <td class="text-center">{{ board.bhitcount }}</td>
            </tr>
  
            <tr>
              <td colspan="5" class="text-center">
                <button
                  class="btn btn-outline-primary btn-sm me-1"
                  @click="changePageNo(1)"
                >
                  처음
                </button>
                <button
                  v-if="page.pager.groupNo > 1"
                  class="btn btn-outline-info btn-sm me-1"
                  @click="changePageNo(page.pager.startPageNo - 1)"
                >
                  이전
                </button>
                <button
                  v-for="pageNo in page.pager.pageArray"
                  :key="pageNo"
                  :class="
                    page.pager.pageNo === pageNo
                      ? 'btn-danger'
                      : 'btn-outline-success'
                  "
                  class="btn btn-sm me-1"
                  @click="changePageNo(pageNo)"
                >
                  {{ pageNo }}
                </button>
                <button
                  v-if="page.pager.groupNo < page.pager.totalGroupNo"
                  class="btn btn-outline-info btn-sm me-1"
                  @click="changePageNo(page.pager.endPageNo + 1)"
                >
                  다음
                </button>
                <button
                  class="btn btn-outline-primary btn-sm me-1"
                  @click="changePageNo(page.pager.totalPageNo)"
                >
                  맨끝
                </button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </template>
  
  <script setup>
  import { ref, watch } from "vue";
  import boardAPI from "@/apis/boardAPI";
  import { useRoute, useRouter } from "vue-router";
  
  //상태 정의
  const page = ref({
    boards: [],
    pager: {},
  });
  
  //GET 방식으로 전달된 파라미터 값얻기
  //http://localhsot/Exam04Board/BoardList?pageNo=2
  const route = useRoute();
  const pageNo = ref(route.query.pageNo || 1);
  
  //게시물 목록을 가져오는 메소드 정의
  async function getBoardList(pageNo) {
    try {
      const response = await boardAPI.getBoardList(pageNo);
      page.value.boards = response.data.boards;   
      page.value.pager = response.data.pager;
    } catch (error) {
      console.log(error);
    }
  }
  
  //게시물 목록 가져오기
  getBoardList(pageNo.value);
  
  //페이저의 버튼을 클릭했을 때 해당 페이지로 이동하는 메소드 정의
  const router = useRouter();
  function changePageNo(argPageNo) {
    router.push(`/Ch08RestAPI/Exam04Board/BoardList?pageNo=${argPageNo}`);
  }
  
  //요청 경로의 변경을 감시
  watch(route, (newRoute, oldRoute) => {
    if (newRoute.query.pageNo) {
      getBoardList(newRoute.query.pageNo);
      pageNo.value = newRoute.query.pageNo;
    } else {
      getBoardList(1);
      pageNo.value = 1;
    }
  });
  </script>
  
  <style scoped></style>
  