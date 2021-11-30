<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="~/dev/Dev.aspx.cs" Inherits="dev_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Concert+One&display=swap");

* {
  font-family: "Concert One", cursive;
}

.body {
  display: flex;
  /*justify-content: center;*/
  /*align-items: center;*/
  min-height: 100vh;
  background: #0099ff;
}

.carddev {
  position: relative;
  width: 500px;
  height: 250px;
  margin-top:120px;
  margin-left: 120px
}

.bgdev {
  position: absolute;
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.3);
  box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
  backdrop-filter: blur(8.5px);
  border-radius: 15px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.frontdev {
  opacity: 1;
  transition: height 1s, opacity 0.7s ease;
}

.frontdev .imagedev {
  position: absolute;
  top: 10px;
  left: 10px;
  width: 60px;
  height: 60px;
  border-radius: 15px;
  background: #0099ff;
  display: flex;
  justify-content: center;
  align-items: center;
}

.frontdev .imagedev img {
  width: 90%;
  height: 90%;
}

.frontdev .namedev {
  position: absolute;
  width: 75%;
  top: 8px;
  left: 90px;
  text-overflow: ellipsis;
  font-size: 3em;
  color: #fff;
}

.frontdev .textdev {
  position: absolute;
  top: 85px;
  left: 10px;
  right: 10px;
  text-align: center;
  font-size: 1.5em;
  color: #fff;
}

.backdev {
  height: 0%;
  opacity: 0;
  transition: height 1s, opacity 0.7s ease;
  bottom: 0px;
}

.backdev .iconsdev {
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  bottom: 5px;
}

.backdev .iconsdev a {
  text-decoration: none;
  padding: 20px;
}

.backdev .iconsdev a:hover {
  z-index: 1;
}

.backdev .iconsdev img {
  width: 60px;
  height: 60px;
}

.backdev .iconsdev a:hover img {
  transform: translate3d(0px, -10px, 50px);
  transition: transform 0.5s;
}

.backdev .iconsdev a .shadowdev {
  width: 30px;
  height: 25px;
  position: absolute;
  background: #000;
  filter: blur(20px);
  z-index: -1;
  transform: translate3d(22px, -47px, 50px) rotateX(40deg);
  opacity: 0;
}

.backdev .iconsdev a:hover .shadowdev {
  z-index: 1;
  opacity: 1;
  transform: translate3d(15px, 3px, 50px) rotateX(0deg);
  transition: transform 0.5s, opacity 0.5s, z-index 0.5s;
}

.carddev:hover .backdev {
  height: 100%;
  opacity: 1;
  transition: height 1s, opacity 0.5s ease;
}

.carddev:hover .frontdev {
  height: 0%;
  opacity: 0;
  transition: height 1s, opacity 0.5s ease;
}

.some_textdev {
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0%);
  bottom: 20px;
  color: #ffffff;
  font-size: 1.5em;
  text-align: center;
}

.some_textdev a {
  text-decoration: none;
  transition: 0.5s;
}

.some_textdev a:hover {
  text-decoration: underline;
  font-size: 1.5em;
}
    </style>

    <div class="body">
   
        <div class="carddev" style="float:left" >
    <div class="frontdev bgdev">

      <div class="imagedev" style="border-radius:10%">
        <img src="../Image/people/1st.jpg" />
      </div>
      <div class="namedev">Saurabh Singh</div>
      <div class="textdev">
        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reiciendis expedita quas quibusdam maiores, architecto
        minima.
      </div>
    </div>

    <div class="backdev bgdev">

      <div class="iconsdev">
        <a href="https://www.facebook.com/">
          <img src="../Image/social/facebook.png">
          <div class="shadowdev"></div>
        </a>
        <a href="https://twitter.com/">
          <img src="../Image/social/twitter.png">
          <div class="shadowdev"></div>
        </a>
        <a href="https://www.linkedin.com/home">
          <img src="../Image/social/linkedin.png">
          <div class="shadowdev"></div>
        </a>
        <a href="https://www.instagram.com/">
          <img src="../Image/social/insta.png">
          <div class="shadowdev"></div>
        </a>
      </div>

    </div>

  </div>

         <div class="carddev" style="float:left" >
    <div class="frontdev bgdev">

      <div class="imagedev" style="border-radius:10%">
        <img src="../Image/people/1st.jpg" />
      </div>
      <div class="namedev">Mridula Khurana</div>
      <div class="textdev">
        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reiciendis expedita quas quibusdam maiores, architecto
        minima.
      </div>
    </div>

    <div class="backdev bgdev">

      <div class="iconsdev">
        <a href="https://www.facebook.com/moses.stob.7">
          <img src="../Image/social/facebook.png">
          <div class="shadowdev"></div>
        </a>
        <a href="https://twitter.com/">
          <img src="../Image/social/twitter.png">
          <div class="shadowdev"></div>
        </a>
        <a href="https://www.linkedin.com/home">
          <img src="../Image/social/linkedin.png">
          <div class="shadowdev"></div>
        </a>
        <a href="https://www.instagram.com/">
          <img src="../Image/social/insta.png">
          <div class="shadowdev"></div>
        </a>
      </div>

    </div>

  </div>

   

  

    </div>
</asp:content>