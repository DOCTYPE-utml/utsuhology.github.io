<achievementBlock>
  <style>
  .content{
    width: 100%;
    text-align: left;
    margin: 10px auto;
    display: inline-block;
    height: auto;
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

  <div class="content">
    <p>{date}</p>
    <p><yield/></p>
    <img if={img} src="{img}">
  </div>

  <script>
  this.date=opts.date;
  this.img=opts.img;
  </script>
</achievementBlock>
