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
    <div class="screen-2">
      <div class="screen-2__heading">优美的设计，更令人着迷</div>
      <div class="screen-2__subheading">采用受欢迎的设计，让它更加出色。<br/>款式小巧、轻便手感更舒适。绚丽高清的显示屏，整个外观显得格外精致。</div>
      <div class="screen-2__phone">
        <div class="screen-2__point screen-2__point_custom_left screen-2__point_i_1">超薄机身</div>
        <div class="screen-2__point screen-2__point_custom_left screen-2__point_i_2">大屏显示</div>
        <div class="screen-2__point screen-2__point_custom_right screen-2__point_i_3">高清摄像</div>
      </div>
    </div>
    <div class="screen-3">
      <div class="screen3__wrapper">
        <div class="screen-3__heading">外形小巧，功能强大的手机</div>
        <div class="screen-3__subheading">采用受欢迎的设计，让它更加出色。<br/>款式小巧、轻便手感更舒适。绚丽高清的显示屏，整个外观显得格外精致。</div>
        <div class="screen-3__phone"></div>
        <div class="screen-3__features">
          <div class="screen-3__features__item">
            <div class="screen-3__features__item__number">5.7</div>
            <div class="screen-3__features__item__des">英寸大屏</div>
          </div>
          <div class="screen-3__features__item">
            <div class="screen-3__features__item__number">1200</div>
            <div class="screen-3__features__item__des">万像素</div>
          </div>
          <div class="screen-3__features__item">
            <div class="screen-3__features__item__number">3D</div>
            <div class="screen-3__features__item__des">touch</div>
          </div>
          <div class="screen-3__features__item">
            <div class="screen-3__features__item__number">A9</div>
            <div class="screen-3__features__item__des">处理器</div>
          </div>
        </div>
      </div>  
    </div>
    <div class="screen-4">
      <div class="screen-4__wrapper">
        <div class="screen-4__heading">丰富的手机型号</div>
        <div class="screen-4__subheading">找到适合你的手机</div>
        <div class="screen-4__type">
          <div class="screen-4__item screen-4__item_i_1">
            <img src="./imgs/screen4-mobile1.png" class="screen-4__item__img">
            <div class="screen-4__type__item_color">酷炫红</div>
            <div class="screen-4__type__item_storage">16G/32G/64G</div>
          </div>
          <div class="screen-4__item screen-4__item_i_2">
            <img src="./imgs/screen4-mobile2.png" class="screen-4__item__img">
            <div class="screen-4__type__item_color">土豪金</div>
            <div class="screen-4__type__item_storage">16G/32G/64G</div>
          </div>
          <div class="screen-4__item screen-4__item_i_3">
            <img src="./imgs/screen4-mobile3.png" class="screen-4__item__img">
            <div class="screen-4__type__item_color">土豪金</div>
            <div class="screen-4__type__item_storage">16G/32G/64G</div>
          </div>
          <div class="screen-4__item screen-4__item_i_4">
            <img src="./imgs/screen4-mobile4.png" class="screen-4__item__img">
            <div class="screen-4__type__item_color">土豪金</div>
            <div class="screen-4__type__item_storage">16G/32G/64G</div>
          </div>          
        </div>
      </div>
    </div>
    <div class="screen-5">
      <div class="screen-5__heading">游戏、学习、拍照、有这一部就够了</div>
      <div class="screen-5__subheading">看视频、拍摄高清视频与照片、视频聊天、一机多功能，让您生活更丰富精彩。</div>
      <div class="screen-5__bg"></div>
    </div>
    <div class="screen-buy">
      <a href="javascript:" class="screen-buy__button">立即购买</a>
    </div>
    <footer class="footer">
      © 2020 heyzqt@qq.com 京ICP备13046642号
    </footer>
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
    this.setScreenAnimateInit('.screen-2__heading');
    this.setScreenAnimateInit('.screen-2__subheading');
    this.setScreenAnimateInit('.screen-2__phone');
    this.setScreenAnimateInit('.screen-2__point_i_1');
    this.setScreenAnimateInit('.screen-2__point_i_2');
    this.setScreenAnimateInit('.screen-2__point_i_3');
    this.setScreenAnimateInit('.screen-3__heading');
    this.setScreenAnimateInit('.screen-3__subheading');
    this.setScreenAnimateInit('.screen-3__phone');
    this.setScreenAnimateInit('.screen-3__features');
    this.setScreenAnimateInit('.screen-4__heading');
    this.setScreenAnimateInit('.screen-4__subheading');
    this.setScreenAnimateInit('.screen-4__item_i_1');
    this.setScreenAnimateInit('.screen-4__item_i_2');
    this.setScreenAnimateInit('.screen-4__item_i_3');
    this.setScreenAnimateInit('.screen-4__item_i_4');
    this.setScreenAnimateInit('.screen-4__item_i_4');
    this.setScreenAnimateInit('.screen-5__heading');
    this.setScreenAnimateInit('.screen-5__subheading');
    this.setScreenAnimateInit('.screen-5__bg');
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
      this.playScreenAnimateDone('.screen-2__heading');
      this.playScreenAnimateDone('.screen-2__subheading');
      this.playScreenAnimateDone('.screen-2__phone');
      this.playScreenAnimateDone('.screen-2__point_i_1');
      this.playScreenAnimateDone('.screen-2__point_i_2');
      this.playScreenAnimateDone('.screen-2__point_i_3');
      this.playScreenAnimateDone('.screen-3__heading');
      this.playScreenAnimateDone('.screen-3__subheading');
      this.playScreenAnimateDone('.screen-3__phone');
      this.playScreenAnimateDone('.screen-3__features');
      this.playScreenAnimateDone('.screen-4__heading');
      this.playScreenAnimateDone('.screen-4__subheading');
      this.playScreenAnimateDone('.screen-4__item_i_1');
      this.playScreenAnimateDone('.screen-5__heading');
      this.playScreenAnimateDone('.screen-5__subheading');
      this.playScreenAnimateDone('.screen-5__bg');
    }, 100)

    setTimeout(() => {
        this.playScreenAnimateDone('.screen-4__item_i_2');
    }, 300);
    setTimeout(() => {
        this.playScreenAnimateDone('.screen-4__item_i_3');
    }, 600);
        setTimeout(() => {
        this.playScreenAnimateDone('.screen-4__item_i_4');
    }, 900);
    
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