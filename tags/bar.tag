<bar>
  <style>
  .bar{
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 50px;
    border: 1px solid #000000;
    background-color: #ffffff;
  }
  .hamburger{
    position: relative;
    top: 0; left: 0;
    width: 50px; height: 50px;
    background-color: #00ff00;
  }
  .menu{
    position: fixed;
    top: 0; left: -200px;
    width: 200px; height: 100%;
    background-color: #0000ff;
    transition: all 300ms 0s ease;
  }
  .menu.active{
    left: 0px;
  }
  </style>

  <div class="bar">
    <div class="hamburger" onclick="{open}">
    </div>
  </div>
  <div class="menu" ref="menu">
    <div class="hamburger" onclick="{close}">
    </div>
  </div>

  <script>
  this.open=function(){
    this.refs.menu.classList.add("active");
  }
  this.close=function(){
    this.refs.menu.classList.remove("active");
  }
  </script>
</bar>
