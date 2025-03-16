const routes = [
  {
    path: "/Ch03DataBinding/Exam01Expressions",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam01Expressions.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam02NotState",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam02NotState.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam03State",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam03State.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam04ComputedFunBinding",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam04ComputedFunBinding.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam05AttrBinding",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam05AttrBinding.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam06InnerHtmlBinding",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam06InnerHtmlBinding.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam07IfShowBinding",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam07IfShowBinding.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam08RepeatBinding",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam08RepeatBinding.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam09FormBinding",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam09FormBinding.vue"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam10FallthroughAttr",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam10FallthroughAttr"
      ),
  },
  {
    path: "/Ch03DataBinding/Exam11Slot",
    component: () =>
      import(
        /* webpackChunkName: "Ch03DataBinding" */ "@/views/Ch03DataBinding/Exam11Slot"
      ),
  },
];

export default routes;
