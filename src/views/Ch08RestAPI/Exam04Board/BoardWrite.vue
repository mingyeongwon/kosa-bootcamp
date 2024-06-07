<template>
    <div class="card">
      <div class="card-header">BoardWrite</div>
      <div class="card-body">
        <form @submit.prevent="handleSubmit">
          <div class="form-group row">
            <label for="btitle" class="col-sm-2 col-form-label">제목</label>
            <div class="col-sm-10">
              <input
                id="btitle"
                type="text"
                class="form-control"
                v-model="board.btitle"
              />
            </div>
          </div>
          <div class="form-group row mt-3">
            <label for="bcontent" class="col-sm-2 col-form-label">내용</label>
            <div class="col-sm-10">
              <textarea
                id="bcontent"
                type="text"
                class="form-control"
                v-model="board.bcontent"
              ></textarea>
            </div>
          </div>
          <div class="form-group row mt-3">
            <label for="battach" class="col-sm-2 col-form-label">첨부그림</label>
            <div class="col-sm-10">
              <input
                id="battach"
                type="file"
                class="form-control-file"
                ref="battach"
              />
            </div>
          </div>
          <div class="form-group row mt-3">
            <div class="col-sm-12 d-flex justify-content-center">
              <input
                type="submit"
                class="btn btn-info btn-sm me-2"
                value="추가"
              />
              <input
                type="button"
                class="btn btn-info btn-sm"
                value="취소"
                @click="handleCancel"
              />
            </div>
          </div>
        </form>
      </div>
    </div>
  </template>
  
  <script setup>
  import { ref } from "vue";
  import boardAPI from "@/apis/boardAPI";
  import { useRouter } from "vue-router";
  
  const router = useRouter();
  //상태 정의
  const board = ref({
    btitle: "",
    bcontent: "",
  });
  
  const battach = ref(null);
  
  //추가 버튼을 클릭했을 때 실행
  const handleSubmit = async () => {
    //multipart/form-data 객체 생성
    const formData = new FormData();
    //문자 파트 넣기
    formData.append("btitle", board.value.btitle);
    formData.append("bcontent", board.value.bcontent);
    //파일 파트 넣기
    const elBattach = battach.value;
    if (elBattach.files.length != 0) {
      formData.append("battach", elBattach.files[0]);
    }
    //게시물 쓰기 요청
    try {
      const response = await boardAPI.boardWrite(formData);
      console.log(response);
      router.back();
    } catch (error) {
      console.log(error);
    }
  };
  
  // 취소 버튼을 클릭했을 때 실행
  const handleCancel = () => {
    router.back();
  };
  </script>
  
  <style scoped></style>
  