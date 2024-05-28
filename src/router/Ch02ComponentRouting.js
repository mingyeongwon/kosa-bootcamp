
const routes = [
  {
    path: "/Ch02ComponentRouting/Exam01View",
    name: "Exam01View",
    component: () =>
    import(
      /* webpackChunkName: "Ch02ComponentRouting" */ "@/views/Ch02ComponentRouting/Exam01View"
    )
  },
  {
    path: "/Ch02ComponentRouting/Exam02View",
    component: () =>
      import(
        /* webpackChunkName: "Ch02ComponentRouting" */ "@/views/Ch02ComponentRouting/Exam02View"
      ),
  },
  {
    path: "/Ch02ComponentRouting/Exam03View",
    component: () =>
    import(
      /* webpackChunkName: "Ch02ComponentRouting" */ "@/views/Ch02ComponentRouting/Exam03View"
    )
  },
  {
    path: "/Ch02ComponentRouting/Exam04View",
    component: () =>
    import(
      /* webpackChunkName: "Ch02ComponentRouting" */ "@/views/Ch02ComponentRouting/Exam04View"
    )
  },
  {
    path: "/Ch02ComponentRouting/Exam05View",
    component:() =>
    import(
      /* webpackChunkName: "Ch02ComponentRouting" */ "@/views/Ch02ComponentRouting/Exam05View"
    ),
    redirect: "/Ch02ComponentRouting/Exam05View/UIComponentA",
    children: [
      {
        path: "UIComponentA", // /Ch02ComponentRouting/Exam05View/UIComponentA
        component: () =>
        import(
          /* webpackChunkName: "Ch02ComponentRouting" */ "@/components/Ch02ComponentRouting/UIComponentA.vue"
        ),
      },
      {
        path: "UIComponentB",
        component: () =>
        import(
          /* webpackChunkName: "Ch02ComponentRouting" */ "@/components/Ch02ComponentRouting/UIComponentB.vue"
        ),
      },
      {
        path: "UIComponentC",
        component: () =>
        import(
          /* webpackChunkName: "Ch02ComponentRouting" */ "@/components/Ch02ComponentRouting/UIComponentC.vue"
        ),
      },
    ],
  },
  {
    path: "/Ch02ComponentRouting/Exam06View",
    component: () =>
    import(
      /* webpackChunkName: "Ch02ComponentRouting" */ "@/views/Ch02ComponentRouting/Exam06View"
    ),
  },
  {
    path: "/Ch02ComponentRouting/Exam07View/:kind?/:color?",
    component: () =>
    import(
      /* webpackChunkName: "Ch02ComponentRouting" */ "@/views/Ch02ComponentRouting/Exam07View"
    ),
  },
];

export default routes;
