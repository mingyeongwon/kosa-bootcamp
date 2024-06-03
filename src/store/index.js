import { createStore } from 'vuex'
import counter from './counter';

// store 객체 생성
 const store = createStore({
  // 루트 상태 정의
  state: {
    userId: "white"
  },

  // 루트 상태 읽는 메소드 정의
  getters: {
    getUserId(state, getters, rootState, rootGetters) {
      return state.userId;
    }
  }, 

  // 루트  상태 변경 메소드 정의 (동기)
  mutations: {
    setUserId(state, payload) {
      state.userId = payload;
    }
  },

  //루트 상태 변경하는 메소드 정의 (비동기)
  actions: {
    login( context, payload) {
      new Promise((resolve, reject) => {
        // 서버와 통신 작업
        if(true) {
        // 로그인 성공 시
        resolve({result:"success", userId:payload.userId});

        // 로그인 실패 시
        } else {
          reject({result:"fall", reason:"password is wrong"});
        } 
      })
      .then((data) => {
        // 작업이 성공적으로 처리가 될 경우 : resolve
        // 상태 변경 작업
        console.log("로그인 성공")
        context.commit("setUserId", data.userId);
      })
      .catch((error) => {
        // 작업이 실패 처리가 될 경우 : reject
        console.log("로그인 실패");
      });
    }
  },

  // 루트 하위의 상태 정의
  modules: {
    counter: counter
  }
});

// store 객체 내보내기
export default store;
