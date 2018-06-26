<randomAchievement>
  <style>
  .content{
    position: absolute;
    width: 1000px;
    overflow: auto;
  }

  ul{
    position: relative;
    float: left;
    left: 50%;
  }
  li{
    position: relative;
    left: -50%;
  }
  </style>

  <div class="content" ref="content">
    <h1>random achievement</h1>
    <hr>
    <ul>
      <li><a href="/generalAchievement">general achievement</a></li>
      <li><a href="/randomAchievement">random achievement</a></li>
    </ul>
    <br>
    <achievementBlock date="2018/6/31" text="しゅうまい君に拾われた" img="/common/imgs/me.png"></achievementBlock>
    <achievementBlock date="2018/6/31" text="しゅうまい君に拾われた"></achievementBlock>
    <achievementBlock date="2018/6/31" text="しゅうまい君に拾われた"></achievementBlock>
  </div>

  <script>
  this.on('mount', function() {
    if(window.innerWidth<1000) this.refs.content.style.width=window.innerWidth+"px";
    else this.refs.content.style.width="1000px";
  });
  window.addEventListener("resize",(function(e){
    if(window.innerWidth<1000) this.refs.content.style.width=window.innerWidth+"px";
    else this.refs.content.style.width="1000px";
  }).bind(this));
  </script>
</randomAchievement>
