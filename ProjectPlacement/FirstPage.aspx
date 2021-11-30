<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="FirstPage.aspx.cs" Inherits="FirstPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div style="background-color:#1e1b1c">
            <asp:Image ID="Image1" runat="server" Height="70%" ImageUrl="~/Image/title1.gif" Width="100%" ImageAlign="Middle" />
        </div>
    
    <div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="Introcontainer">
                   <style>
                       .mydropdownlist1
{
color: #fff;
font-size: 20px;
padding: 5px 10px;
border-radius: 5px 12px;
background-color: #292929;
font-weight: bold;
margin-left: 42%;
}
                       .submit {
  background-color: #e7e7e7; color: black;
  border: none;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  
  display: inline-block;
  font-size: 16px;
}
                   </style>
                   <div class =" Introbody" style="background-color: #f1f1f1; width:100%">
                       
            <h2 style="text-align:center">Placement Cell, Panjab University, Chandigarh</h2>
            <br />
            <h3 style="text-align:center">Please Select a category</h3>
            <br />
            <asp:DropDownList  ID="DropDownList1" Class="mydropdownlist1" runat="server"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Select Category</asp:ListItem>
                <asp:ListItem Value="Admin/AdminLogin.aspx">Admin</asp:ListItem>
                <asp:ListItem Value="memberLogin/memberlogin.aspx">Team Member</asp:ListItem>
                <asp:ListItem Value="AboutUs/AboutUs.aspx">About Us</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" Class="submit" runat="server" style="margin-left:42%" Text="Submit" OnClick="Button1_Click" />
        </div>  
        </div>
        </div>
        <!------------------------------------------------------------------------------------------------------->
        <style>
* {
 box-sizing:border-box;
}

.Introbody {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.Introcontainer {
  padding: 64px;
}

.Introrow:after {
  content: "";
  display: table;
  clear: both
}

.column-66 {
  float: left;
  width: 66.66666%;
  padding: 20px;
}

.column-33 {
  float: left;
  width: 33.33333%;
  padding: 20px;
}

.large-font {
  font-size: 48px;
}

.xlarge-font {
  font-size: 64px
}



.Introimg {
  display: block;
  height: auto;
  max-width: 100%;
}




</style>

<div class="Introbody">

<div style="text-align:center">
  <h2>A Word From Our TPOs</h2>

</div>

<!-- The App Section -->
<div class="Introcontainer">
  <div class="Introrow">
    <div class="column-66">
      <h1 class="xlarge-font">Dr Anu Gupta</h1>
      <h2 class="large-font" style="color:MediumSeaGreen;">Professor</h2>
      <p><span style="font-size:24px">Ph.D., M.C.A.</span> quis nostrud exercitation ullamco laboris nisi ut lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      
    </div>
    <div class="column-33">
        <img src="Image/people/8th.jpg" class="Introimg" width="335" height="471">
    </div>
  </div>
</div>

<!-- Clarity Section -->
<div class="Introcontainer" style="background-color:#f1f1f1">
  <div class="Introrow">
    <div class="column-33">
      <img src="Image/people/2nd.jpg" alt="App" class="Introimg" width="335" height="471">
    </div>
    <div class="column-66">
      <h1 class="xlarge-font">Mr Anuj Kumar</h1>
      <h2 class="large-font" style="color:red;">Assistant Professor</h2>
      <p><span style="font-size:24px"> MCA, M.Tech</span> incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquipex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
      
    </div>
  </div>
</div>

<!-- The App Section -->
<div class="Introcontainer">
  <div class="Introrow">
    <div class="column-66">
      <h1 class="xlarge-font">Dr Kavita Taneja</h1>
      <h2 class="large-font" style="color:MediumSeaGreen;">Assistant Professor</h2>
      <p><span style="font-size:24px">Ph.D. (CSA), M.Phil (CS), MCA, B.Sc (Hons) Physics</span> quis nostrud exercitation ullamco laboris nisi ut lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
      
    </div>
    <div class="column-33">
        <img src="Image/people/5th.jpg" width="335" class="Introimg" height="471" >
    </div>
  </div>
</div>
</div>


        <!---third part of page----------->
        <style>
.flip-card-body {
  font-family: Arial, Helvetica, sans-serif;
}

.flip-card {
  background-color: transparent;
  width: 300px;
  height: 330px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  /*background-color: #bbb;*/
  color: black;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
}
</style>
        <div style="height:1050px; width:100%; background: linear-gradient(#e66465, #9198e5); overflow:hidden">
            <h1 style="text-align:center"> Know Your Team</h1>
            <div class="flip-card-body">
                  <div style="width:30px; height:200px; float:left"></div>
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/1st.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
      
    <div class="flip-card-back">
      <h1>Mridula Khurana</h1> 
      <p>Coordinator</p> 
      <p>MCA Morning 2nd year</p>
         <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
<div style="width:30px; height:200px; float:left"></div>
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/2nd.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>Dimple Sharma</h1> 
      <p>Co-Coordinator</p> 
      <p>MCA Morning 2nd Year</p>
        <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
                <div style="width:30px; height:200px; float:left"></div>
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/3rd.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>Mohit Kumar</h1> 
      <p>Co-Coordinator</p> 
      <p>MCA Evening 2nd year</p>
          <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
                <div style="width:30px; height:200px; float:left"></div>
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/4th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>Saurabh Singh</h1> 
      <p>Database <br> & <br>Media Head</p> 
      <p>MCA Morning 2nd year</p>
          <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
                <!--------next row--------->

                  
                 <div style="width:30px; height:200px; float:left"></div>
                
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/5th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>Arsh Sharma</h1> 
      <p>Finance Head</p> 
      <p>MCA Morning 2nd year</p>
          <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
                <div style="width:30px; height:200px; float:left"></div>
                
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/6th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>Tamanna Bansal</h1> 
      <p>Calling Head</p> 
      <p>MCA Evening 2nd year</p>
          <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
  </div>
</div>
    </div>
                <div style="width:30px; height:200px; float:left"></div>
                
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/7th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>Abhishek Attri</h1> 
      <p>Techinal Head</p> 
      <p>MCA Morning 2nd year</p>
          <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
                <div style="width:30px; height:200px; float:left"></div>
                
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/8th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>Pratibha Kumari</h1> 
      <p>Hospitality Head</p> 
      <p>MCA Morning 2nd year</p>
          <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
                <!--------next row--------->

                  
                 <div style="width:30px; height:200px; float:left"></div>
                
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/9th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>Samikhsa Bansal</h1> 
      <p>Hospitality Head</p> 
      <p>MCA Evening 2nd year</p>
         <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
                <div style="width:30px; height:200px; float:left"></div>
                
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/10th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
     <h1>Nikhil Sharma</h1> 
      <p>Techinal Head</p> 
      <p>MCA Evening 2nd year</p>
          <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
                <div style="width:30px; height:200px; float:left"></div>
                
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/11th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
     <h1>Mannat Singh</h1> 
      <p>Technical Head</p> 
      <p>MCA Evening 2nd year</p>
          <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>

    </div>
  </div>
</div>
                <div style="width:30px; height:200px; float:left"></div>
                
<div class="flip-card" style="float:left">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Image/people/12th.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
     <h1>Yashika Dingra</h1> 
      <p>Calling Head</p> 
      <p>MCA Morning 2nd year</p>
         <a href="https://www.facebook.com/"><img src="Image/social/facebook.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.instagram.com/"><img src="Image/social/insta.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://www.linkedin.com/home"><img src="Image/social/linkedin.png" alt="Avatar" style="width:30px;height:30px;"></a>
         <a href="https://twitter.com/"><img src="Image/social/twitter.png" alt="Avatar" style="width:30px;height:30px;"></a>
    </div>
  </div>
</div>
</div>
    </div>

   
</asp:Content>

