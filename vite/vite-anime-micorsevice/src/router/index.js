import { createRouter, createWebHistory } from 'vue-router';
import main from '../components/user/main.vue';
import adminlogin from '../components/admin/Login.vue';
import adminmain from '../components/admin/main.vue'
import muser from '../components/admin/muser.vue';
import manime from '../components/admin/manime.vue';
import addanime from '../components/admin/addanime.vue';
import index from '../components/user/index/index.vue';
import ranking from '../components/user/ranking/ranking.vue';
import sp from '../components/user/spanime.vue';

const routes = [
    {
      path: '/',
      redirect: '/user', // 进入根路径自动跳转到 /user
    },
    {
      path: '/user',
      component: main,
      children: [
        {
          path: '/index',
          name: 'indexr',
          component:index,
        },
        {
          path: '/ranking',
          name: 'ranking',
          component:ranking,
        },
        
      ],
    },
    {
      path: '/adminlogin',
      component: adminlogin,
      
    },
    {
      path: '/sp',
      component: sp,
      
    },
    {
        path: '/adminmain',
        name: 'adminmain',
        component: adminmain,
        children:[
              {
                path: '/manage-user',
                name: 'muser',
                component:muser,
              },
              {
                path: '/manage-anime',
                name: 'manime',
                component:manime,
              },
              {
                path: '/add-anime',
                name: 'addanime',
                component:addanime,
              }
        ],
      },
  ];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;