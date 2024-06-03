const routes = [
    {
        path: "/Ch05DataDelivery/Exam01Props",
        component: () =>
          import(
            /* webpackChunkName: "Ch05DataDelivery" */ "@/views/Ch05DataDelivery/Exam01Props"
          ),
      },
      {
        path: "/Ch05DataDelivery/Exam02EventEmit",
        component: () =>
          import(
            /* webpackChunkName: "Ch05DataDelivery" */ "@/views/Ch05DataDelivery/Exam02EventEmit"
          ),
      },
      {
        path: "/Ch05DataDelivery/Exam03ProvideInject",
        component: () =>
          import(
            /* webpackChunkName: "Ch05DataDelivery" */ "@/views/Ch05DataDelivery/Exam03ProvideInject"
          ),
      },
];

export default routes;