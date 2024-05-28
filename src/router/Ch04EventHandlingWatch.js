const routes = [
    {
        path: "/Ch04EventHandlingWatch/Exam01EventHandling",
        component: () =>
          import(
            /* webpackChunkName: "Ch04EventHandlingWatch" */ "@/views/Ch04EventHandlingWatch/Exam01EventHandling.vue"
          ),
      },
];

export default routes;