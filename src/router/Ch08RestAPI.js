const routes = [
    {
        path: "/Ch08RestAPI/Exam01Promise",
        component: () =>
          import(
            /* webpackChunkName: "Ch08RestAPI" */ "@/views/Ch08RestAPI/Exam01Promise"
          ),
      },
      {
        path: "/Ch08RestAPI/Exam02Join",
        component: () =>
          import(
            /* webpackChunkName: "Ch08RestAPI" */ "@/views/Ch08RestAPI/Exam02Join"
          ),
      },
      {
        path: "/Ch08RestAPI/Exam03Login",
        component: () =>
          import(
            /* webpackChunkName: "Ch08RestAPI" */ "@/views/Ch08RestAPI/Exam03Login"
          ),
      },
      {
        path: "/Ch08RestAPI/Exam04Board/BoardList",
        component: () =>
          import(
            /* webpackChunkName: "Ch08RestAPI" */ "@/views/Ch08RestAPI/Exam04Board/BoardList.vue"
          ),
      },
      {
        path: "/Ch08RestAPI/Exam04Board/BoardWrite",
        component: () =>
          import(
            /* webpackChunkName: "Ch08RestAPI" */ "@/views/Ch08RestAPI/Exam04Board/BoardWrite.vue"
          ),
      },
      {
        path: "/Ch08RestAPI/Exam04Board/BoardRead",
        component: () =>
          import(
            /* webpackChunkName: "Ch08RestAPI" */ "@/views/Ch08RestAPI/Exam04Board/BoardRead.vue"
          ),
      },
      {
        path: "/Ch08RestAPI/Exam04Board/BoardUpdate",
        component: () =>
          import(
            /* webpackChunkName: "Ch08RestAPI" */ "@/views/Ch08RestAPI/Exam04Board/BoardUpdate.vue"
          ),
      },
];

export default routes;