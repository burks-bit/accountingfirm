import { createRouter, createWebHistory } from 'vue-router'
import AdminLayout from '@/layouts/AdminLayout.vue'
import StaffLayout from '@/layouts/StaffLayout.vue'

function isLoggedIn() {
  return localStorage.getItem('token') !== null;
}

function requireAuth(to, from, next) {
  const loggedInUserRole = localStorage.getItem('userRole');
  if (to.meta.requiresAuth && !isLoggedIn()) {
    next({ name: 'Login' }); // Redirect to login page if not logged in
  } else if (to.name === 'Login' && isLoggedIn() && loggedInUserRole === '1') {
    next({ name: 'AdminDashboard' });
  } else if (to.name === 'Login' && isLoggedIn() && loggedInUserRole === '2') {
    next({ name: 'StaffDashboard' });
  } else {
    next(); // Proceed to the route
  }
}


const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '',
      name: 'Login',
      component: () => import('@/views/Login.vue'),
    },
    {
      path: '/admin',
      component: AdminLayout,
      meta: {
        role: ['0'],
        requiresAuth: true,
      },
      children: [
        {
          path: '',
          name: 'AdminDashboard',
          component: () => import('@/views/Admin/AdminDashboard.vue'),
        },
        {
          path: '/admin/users',
          name: 'Users',
          component: () => import('@/views/Admin/Users/Users.vue'),
        },
        {
          path: '/admin/invoices',
          name: 'Invoices',
          component: () => import('@/views/Invoices/InvoiceList.vue'),
        }
      ]
    }
    ,
    {
      path: '/staff',
      component: StaffLayout,
      meta: {
        role: ['0'],
        requiresAuth: true,
      },
      children: [
        {
          path: '',
          name: 'StaffDashboard',
          component: () => import('@/views/Dashboard.vue'),
        }
      ]
    },
  ]
})

router.beforeEach(requireAuth);
export default router
