<template>
    <div class="form-container">
        <div class="jumbotron">
            <el-form :model="form" label-width="60px">
                <!-- <h1></h1> -->
                <el-form-item label="Email">
                    <el-input v-model="form.email" placeholder="Enter your email" />
                </el-form-item>
                <el-form-item label="Password">
                    <el-input v-model="form.password" type="password" placeholder="Enter your password" />
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" @click="onSubmitLoginRequest">Login</el-button>
                </el-form-item>
            </el-form>
        </div>
    </div>
</template>
  
<script setup>
    import { backendAPI } from '@/services/BackendAPIUrl.vue';
    import { reactive } from 'vue';
    import axios from 'axios'
    import { useRouter } from 'vue-router';

    const router = useRouter();
    const apiUrl = backendAPI.getApiUrl();
  
    const form = reactive({
        email: '',
        password: '',
    })

    const onSubmitLoginRequest = async () => {
        try {
            const loginResponse = await axios.post(apiUrl + 'api/login', form);
            console.log(loginResponse.data);
            if(loginResponse.data.status === 'success'){
                
                localStorage.setItem('userRole', loginResponse.data.role);
                localStorage.setItem('token', loginResponse.data.token);

                if(loginResponse.data.role === 1){
                    router.push({ name: 'AdminDashboard' });
                } else {
                    router.push({ name: 'StaffDashboard' });
                }
            }
        } catch (error) {
            console.error('Problem with API', error);
        }
    };

</script>
  
<style scoped>
    .form-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .jumbotron {
        background-color: #f8f9fa; /* Light gray background color */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
    }
</style>
  