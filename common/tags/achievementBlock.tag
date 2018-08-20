<achievementBlock>
  <style>
  div{
    position: relative;
    text-align: left;
    display: inline-block;
    width: 100%; height: auto;
    margin: 10px 0; padding: 0;
    background-color: #eeeeee;
    box-sizing: border-box;
  }

  p{
    margin: 15px;
  }

  img{
    margin: 15px;
  }
  </style>

  <div>
    <p>{date}</p>
    <p><yield/></p>
    <img if={img} src="{img}">
  </div>

  <script>
  this.date=opts.date;
  this.img=opts.img;
  </script>
</achievementBlock>
