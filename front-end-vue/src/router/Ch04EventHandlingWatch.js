const routes = [
    {
        path: "/Ch04EventHandlingWatch/Exam01EventHandling",
        component: () =>
          import(
            /* webpackChunkName: "Ch04EventHandlingWatch" */ "@/views/Ch04EventHandlingWatch/Exam01EventHandling.vue"
          ),
      },
      {
        path: "/Ch04EventHandlingWatch/Exam02Watch",
        component: () =>
          import(
            /* webpackChunkName: "Ch04EventHandlingWatch" */ "@/views/Ch04EventHandlingWatch/Exam02Watch.vue"
          ),
      },
];

export default routes;