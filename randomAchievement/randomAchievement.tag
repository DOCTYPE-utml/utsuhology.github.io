<randomAchievement>
  <style>
  .content{
    position: absolute;
    width: 1000px;
    overflow: auto;
  }
  </style>

  <div class="content" ref="content">
    <h1>random achievement</h1>
    <hr>
    <p>単にうれしかったこと。しょぼいことも書きます</p>
    <p><a href="/generalAchievement">general achievement</a> / <a href="/randomAchievement">random achievement</a></p>
    <br>
      <achievementBlock date="2018/4/20" img="imgs/334.png">
        334 top獲得！<br>
        <a href="https://twitter.com/Utsuhology/status/987398994811699200" target="_blank">当該ツイート</a> <a href="https://twitter.com/334_Ranker/status/987399377118523392" target="_blank">らんきんぐ</a>
      </achievementBlock>
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
