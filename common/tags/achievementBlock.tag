<achievementBlock>
  <style>
  div{
    position: relative;
    text-align: left;
    display: inline-block;
    width: 100%; height: auto;
    margin: 10px 0px; padding: 0;
    background-color: #eeeeee;
    box-sizing: border-box;
  }

  img{
    margin: 10px;
    height: 200px;
  }
  </style>

  <div ref="unchi">
    <p>{date}</p>
    <p>{text}</p>
    <img if={img} src="{img}">
  </div>

  <script>
  this.date=opts.date;
  this.text=opts.text;
  this.img=opts.img;
  </script>
</achievementBlock>
