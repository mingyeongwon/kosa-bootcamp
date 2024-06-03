const routes = [
    {
        path: "/Ch08RestAPI/Exam01Promise",
        component: () =>
          import(
            /* webpackChunkName: "Ch08RestAPI" */ "@/views/Ch08RestAPI/Exam01Promise"
          ),
      },
];

export default routes;