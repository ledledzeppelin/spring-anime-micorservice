<template>
    <div>
        <h1 class="experiment" >this is long</h1>
        <long></long>
    </div>
</template>

<script>
import long from '../part/longView.vue';

export default {
    data()
    {
        return{
            
            
        }
    },
    components: {
    long
   },
}

</script>

<style lang="scss" scoped>

.experiment{
    color:hsl(0, 100%, 50%);
    background-color: rgb(0, 0, 0);
}
</style>