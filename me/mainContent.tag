<mainContent>
  <style>
  .content{
    width: 1000px;
  }

  .textSquere{
    position: relative;
    text-align: left;
    display: inline-block;
    width: 80%; height: auto;
    margin: 0; padding: 0;
  }

  .skillTextSquere{
    width: 30%;
  }
  </style>

  <div class="content" ref="content">
    <h1>Utsuhology</h1>
    <hr>
    <p>About me!</p>
    <br>
    <img id="meImg" src="/common/imgs/me.png" height="400px">
    <p>明治大学総合数理学部先端メディアサイエンス学科3年</p>
    <p>小林研究室　所属</p>
    <p>♰CHUNITHM レート15.2x♰</p>
    <p>♰SDVX 後光或帝滅斗♰</p>
    <br>
    <br>
    <h3>introduction</h3>
    <div class="textSquere">
      <ul>
        <li><strong>新しい表現/コンテンツ</strong>がすきです。</li>
        <li><strong>音ゲー</strong>がすきです。プレイするほかに作曲したり、Cordova+p5.jsで簡単に音ゲーを作ったりしています。</li>
        <li><strong>独り言</strong>をよく言います。声に出しても誰かに話してもデータ化されず無駄なので<strong>Twitter</strong>に投げています。</li>
        <li>声による<strong>話のデータ化・要約の研究</strong>がしたいです。</li>
      </ul>
    </div>
    <h3>skills</h3>
    <div class="textSquere skillTextSquere">
      <ul>
        <li>Processing</li>
        <li>Javascript</li>
        <ul>
          <li>Cordova</li>
          <li>p5.js</li>
          <li>Riot.js</li>
        </ul>
        <li>PHP</li>
        <li>Python</li>
      </ul>
    </div>
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
</mainContent>
