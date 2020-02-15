<template>
  <div id="app">
    <div class="header">
      <div class="header__wrap">
        <div class="header__logo">heyzqt手机</div>
        <div class="header__nav">
          <a v-for="(item,index) in navList" :key="index" href="javascript:" class="nav-item" 
          :class="{'active' : tabIndex==index}" ref="navItem" @mouseover="changeIndicator(index)"
          @click="changeCurrentTab(index)">{{item}}</a>
          <div class="header__nav-tip" ref="navTip" :style="`left: ${scrollLeft}px`" v-show="scrollLeft!=0"></div>
        </div>
        <div class="header__nav-item_buy_button">立即购买</div>
      </div>
    </div>
  </div>
</template>
<script>
import storage from './utils/storage'
export default {
  data() {
    return {
      navList: ["首页", "外观", "配置", "型号", "说明"],
      tabIndex: 0, //导航栏tab选择记录
      scrollLeft: 0
    }
  },
  mounted() {
    if(storage.get('tabIndex') != null) {
      this.tabIndex = storage.get('tabIndex');
    }
    this.scrollLeft=this.$refs.navItem[this.tabIndex].offsetLeft;
  },
  methods: {
    changeIndicator(index) {
      console.log(this.$refs.navItem[index].offsetLeft);
      console.dir(this.$refs.navTip);
      console.dir(this.$refs.navTip.style);
      this.scrollLeft=this.$refs.navItem[index].offsetLeft;
      console.log('scrollLeft=', this.scrollLeft);
    },
    changeCurrentTab(index) {
      this.tabIndex = index;
      storage.set('tabIndex', index);
    }
  }
}
</script>
<style lang="scss">
@import "./public.scss";
@import "./index.scss";
</style>