<template>
    <el-row :gutter="20">
        <el-col :span="4">
            <el-row class="tac">
                <el-col :span="22">
                    <!-- <h5 class="mb-2">Account</h5> -->
                    <div style="text-align: center;align-items: center; justify-content: center;">
                        <router-link to="/admin">
                            <el-image style="width: 100px; height: 100px" :src="exampleImage" />
                        </router-link>
                        <!-- <h1>Accounting Payable </h1> -->
                    </div>
                    <el-menu
                        default-active="2"
                        class="el-menu-vertical-demo"
                        @open="handleOpen"
                        @close="handleClose"
                    >
                        <el-sub-menu index="1">
                            <template #title>
                                <el-icon><Notebook /></el-icon>
                                <span>Invoices</span>
                            </template>
                            <router-link to="/admin/invoices">
                                <el-menu-item index="1-1">Invoice List</el-menu-item>
                            </router-link>
                            <el-menu-item index="1-2">Issuance</el-menu-item>
                            <el-menu-item index="1-3">Reports</el-menu-item>
                        </el-sub-menu>
                        <el-sub-menu index="2">
                            <template #title>
                                <el-icon><Notebook /></el-icon>
                                <span>Vendors</span>
                            </template>
                            <el-menu-item index="2-1">Vendors List</el-menu-item>
                            <el-menu-item index="2-2">Reports</el-menu-item>
                        </el-sub-menu>
                        <el-sub-menu index="3">
                            <template #title>
                                <el-icon><User /></el-icon>
                                <span>Users</span>
                            </template>
                            <router-link to="/admin/users">
                                <el-menu-item index="3-1">
                                    Users List
                                </el-menu-item>
                            </router-link>
                        </el-sub-menu>
                        <!-- <el-menu-item index="2">
                            <el-icon><icon-menu /></el-icon>
                            <span>Navigator Two</span>
                        </el-menu-item>
                        <el-menu-item index="3" disabled>
                            <el-icon><document /></el-icon>
                            <span>Navigator Three</span>
                        </el-menu-item>
                        <el-menu-item index="4">
                            <el-icon><setting /></el-icon>
                            <span>Navigator Four</span>
                        </el-menu-item> -->
                    </el-menu>
                </el-col>
            </el-row>
        </el-col>
        <el-col :span="16">
            <router-view />
        </el-col>
    </el-row>
</template>


<script lang="ts" setup>
    import exampleImage from '@/assets/acctglogo.jpg';

    import {
        Document,
        Menu as IconMenu,
        Notebook,
        Setting,
        User,
    } from '@element-plus/icons-vue'

    const handleOpen = (key: string, keyPath: string[]) => {
        // console.log(key, keyPath)
    }

    const handleClose = (key: string, keyPath: string[]) => {
        // console.log(key, keyPath)
    }
</script>
