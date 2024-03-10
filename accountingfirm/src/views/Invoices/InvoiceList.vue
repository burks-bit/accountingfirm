<template>
    <h3>Invoices</h3>

    <el-table :data="tableData" style="width: 100%">
        <el-table-column prop="invoice_date" label="Invoice Date" width="180" />
        <el-table-column prop="invoice_number" label="Invoice Number" width="180" />
        <el-table-column prop="vendor" label="Vendor" />
        <el-table-column prop="amount" label="Amount" />
        <el-table-column prop="due_date" label="Due Date" />
    </el-table>
    
</template>

<script setup>
    import axios from 'axios';
    import { useRouter } from 'vue-router';
    import { ref, onMounted } from 'vue';
    import { backendAPI } from '@/services/BackendAPIUrl.vue';
    
    const router = useRouter();
    const apiUrl = backendAPI.getApiUrl();
    
    const tableData = ref([]);

    const getInvoices = async () => {
        try {
            const response = await axios.get(apiUrl + 'api/invoices');
            if (Array.isArray(response.data)) {
                console.log('1');
                tableData.value = response.data.map(formatInvoiceData);
            } else if (typeof response.data === 'object') {
                console.log(response.data);
                console.log('2');
                tableData.value = [formatInvoiceData(response.data)];
            } else {
                console.error('Data received from API is neither an array nor an object:', response.data);
            }
        } catch (error) {
            console.error('Problem with API', error);
        }
    }

    // Helper function to format invoice data
    const formatInvoiceData = (invoice) => ({
        invoice_date: invoice.invoice_date,
        invoice_number: invoice.invoice_number,
        vendor: invoice.vendor,
        amount: invoice.amount,
        due_date: invoice.due_date
    });

    // Fetch invoices data when the component is mounted
    onMounted(getInvoices);
</script>
