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
    <div class="right-nav">
      <a v-for="(item,index) in navList" :key="index" href="javascript:" class="item" 
      :class="{'active' : tabIndex==index}" ref="navItem"
      @click="changeCurrentTab(index)">{{item}}</a>
    </div>
    <div class="screen-1">
      <div class="screen-1__heading">
        <b>heyzqt手机</b>
        让你的生活更精彩
      </div>
      <div class="screen-1__phone"></div>
      <div class="screen-1__shadow"></div>
    </div>
  </div>
</template>
<script>
var screenAnimateElements = {
  '.screen-1' : [
    '.screen-1__heading',
    '.screen-1__phone',
    '.screen-1__shadow',
  ],
  '.screen-2' : [
    '.screen-2__heading',
    '.screen-2__subheading',
    '.screen-2__phone',
    '.screen-2__point_i_1',
    '.screen-2__point_i_2',
    '.screen-2__point_i_3',
  ],
  '.screen-3' : [
    '.screen-3__heading',
    '.screen-3__phone',
    '.screen-3__subheading',
    '.screen-3__features',
  ],
  '.screen-4' : [
    '.screen-4__heading',
    '.screen-4__subheading',
    '.screen-4__type__item_i_1',
    '.screen-4__type__item_i_2',
    '.screen-4__type__item_i_3',
    '.screen-4__type__item_i_4',
  ],
  '.screen-5' : [
     '.screen-5__heading',
    '.screen-5__subheading',
    '.screen-5__bg',
  ]

};
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

    //screen1的动画
    this.setScreenAnimateInit('.screen-1__heading');
    this.setScreenAnimateInit('.screen-1__phone');
    this.setScreenAnimateInit('.screen-1__shadow');
  //   for(let k in screenAnimateElements){
  //     if(k == '.screen-1'){
  //       continue;
  //     }
  //     setScreenAnimateInit(k);
  //  }
    setTimeout(()=>{
      this.playScreenAnimateDone('.screen-1__heading');
      this.playScreenAnimateDone('.screen-1__phone');
      this.playScreenAnimateDone('.screen-1__shadow');
    }, 100)
    
  },
  methods: {
    setScreenAnimateInit(screenCls) {
      var screen = document.querySelector(screenCls); // 获取当前屏的元素
      // var animateElements =  screenAnimateElements[screenCls]; // 需要设置动画的元素
      // for(var i=0;i<animateElements.length;i++){
      //     var element = document.querySelector(animateElements[i]);
      //     var baseCls = element.getAttribute('class');
      //     element.setAttribute('class',baseCls +' '+animateElements[i].substr(1)+'_animate_init');
      // }

      let baseCls = screen.getAttribute('class');
      screen.setAttribute('class', baseCls+" "+screenCls.substring(1)+'_animate_init'); 
    },
    playScreenAnimateDone(screenCls){
        var screen = document.querySelector(screenCls); // 获取当前屏的元素
        // var animateElements =  screenAnimateElements[screenCls]; // 需要设置动画的元素
        // for(var i=0;i<animateElements.length;i++){
        //     var element = document.querySelector(animateElements[i]);
        //     var baseCls = element.getAttribute('class');
        //     element.setAttribute('class',baseCls.replace('_animate_init','_animate_done'));    
        // }
        let baseCls = screen.getAttribute('class');
        screen.setAttribute('class', baseCls.replace('_animate_init', '_animate_done')); 
    },
    changeIndicator(index) {
      this.scrollLeft=this.$refs.navItem[index].offsetLeft;
    },
    changeCurrentTab(index) {
      this.tabIndex = index;
      storage.set('tabIndex', index);
      this.scrollLeft=this.$refs.navItem[index].offsetLeft;
    }
  }
}
</script>
<style lang="scss">
@import "./public.scss";
@import "./index.scss";
</style>