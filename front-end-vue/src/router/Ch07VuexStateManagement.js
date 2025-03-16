const routes = [
    {
        path: "/Ch07VuexStateManagement/Exam01RootState",
        component: () =>
          import(
            /* webpackChunkName: "Ch07VuexStateManagement" */ "@/views/Ch07VuexStateManagement/Exam01RootState.vue"
          ),
      },
      {
        path: "/Ch07VuexStateManagement/Exam02CounterState",
        component: () =>
          import(
            /* webpackChunkName: "Exam02CounterState" */ "@/views/Ch07VuexStateManagement/Exam02CounterState.vue"
          ),
      },
];

export default routes;