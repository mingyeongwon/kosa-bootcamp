const routes = [
    {
        path: "/Ch06LifecycleHook/Exam01LifecycleHook",
        component: () =>
          import(
            /* webpackChunkName: "Ch06LifecycleHook" */ "@/views/Ch06LifecycleHook/Exam01LifecycleHook"
          ),
      },
      {
        path: "/Ch06LifecycleHook/Exam02DomElementRef",
        component: () =>
          import(
            /* webpackChunkName: "Ch06LifecycleHook" */ "@/views/Ch06LifecycleHook/Exam02DomElementRef"
          ),
      },
];

export default routes;