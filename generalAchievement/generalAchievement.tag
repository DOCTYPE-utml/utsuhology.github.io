<generalAchievement>
  <style>
  .content{
    position: absolute;
    width: 400px;
    overflow: visible;
  }
  </style>

  <div class="content" ref="content">
    <h1>general achievement</h1>
    <hr>
    <p>真面目な業績です。</p>
    <p><a href="/generalAchievement">general achievement</a> / <a href="/randomAchievement">random achievement</a></p>
    <br>
      <achievementBlock date="2018/5/27">
        「第一回CHUNITHMオリジナル楽曲コンテスト」に応募<br>
        残念ながら落選しました。<br>
        <a href="http://www.nicovideo.jp/watch/sm33274418" target="_blank">当該楽曲（ニコニコ動画）</a>
        <a href="https://chunithm-special.sega.jp/" target="_blank">会場ページ</a>
      </achievementBlock>
      <achievementBlock date="2018/1/27,28"　img="imgs/Webとクルマのハッカソン 2018.png">
        「Webとクルマのハッカソン 2018」に参加<br>
        自分を含めた学生4人で参加し、「寿司ドラ」を作りました。<br>
        <a href="https://rp.kddi-research.jp/hackathon" target="_blank">会場ページ</a>
      </achievementBlock>
      <achievementBlock date="2017/5/31">
        Dynamix公募に応募<br>
        残念ながら落選しました。<br>
        <a href="https://soundcloud.com/utsuhology/otaq" target="_blank">当該楽曲（Soundcloud）</a>
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
</generalAchievement>
