import axios from "axios";
import qs from "qs";

// 회원가입
function join(member) {
    // member = {
    //     mid : "mid",
    //     mname : "mname",
    //     mpassword : "mpassword",
    //     memail : "memail"
    // }
    // post : raw / json 방식으로 전달 
    return axios.post("/member/join", member);
}

// 로그인
function login(member) {
    // member = {
    //     mid : "mid",
    //     mpassword : "mpassword"
    // }

    // post : querystring(userId=user&userPassword=userPassword) 방식으로 전달
    return axios.post("/member/login", qs.stringify(member));
}

export default {
    join,
    login
};