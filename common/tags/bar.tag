<bar>
  <style>
  .bar,.menu,.cover{
    user-select: none;
    z-index: 100;
  }

  .bar{
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 50px;
    border: 1px solid #dddddd;
    background-color: #ffffff;
  }
  .bar .content{
    float: left;
  }
  .bar .contentRight{
    float: right;
  }

  .hamburger{
    position: relative;
    top: 0; left: 0;
    width: 50px; height: 50px;
    background-color: #dddddd;
  }
  .menu{
    position: fixed;
    top: 0; left: -300px;
    width: 300px; height: 100%;
    background-color: #eeeeee;
    transition: all 300ms 0s ease;
  }
  .menu.appear{
    left: 0px;
  }

  .cover{
    visibility: hidden;
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background-color: #000000;
    opacity: 0;
    transition: all 300ms 0s ease;
  }
  .cover.appear{
    left: 300px;
    visibility: visible;
    opacity: 0.3;
  }
  </style>

  <div class="bar">
    <div class="hamburger content" onclick="{open}">
    </div>
    <a href="/" class="content"><img src="/common/imgs/me.png" height="50px"></a>
    <a href="#" class="content"><img src="/common/imgs/me.png" height="50px"></a>
    <a href="#" class="contentRight"><img src="/common/imgs/me.png" height="50px"></a>
  </div>
  <div class="menu" ref="menu">
    <div class="hamburger" onclick="{close}">
    </div>
  </div>
  <div class="cover" ref="cover" onclick="{close}">
  </div>

  <script>
  this.open=function(){
    this.refs.menu.classList.add("appear");
    this.refs.cover.classList.add("appear");
  }
  this.close=function(){
    this.refs.menu.classList.remove("appear");
    this.refs.cover.classList.remove("appear");
  }
  </script>
</bar>
