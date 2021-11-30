<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style>
        body{
	margin:0;
	color:#444;
	overflow:hidden;
	font:300 16px/18px Roboto, sans-serif;
	background:url(https://raw.githubusercontent.com/khadkamhn/profile-card/master/bg.jpg) #031b21 no-repeat center fixed;
	background-size:cover;
}
*,:after,:before{box-sizing:border-box}
.pull-left{float:left}
.pull-right{float:right}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}

.profile-card-wrapDev .contentDev:before,
.profile-card-wrapDev .link-infoDev .photoDev:after{
	content:'';
	position:absolute;
}
.profile-card-wrapDev{
	top:50%;
	left:50%;
	width:500px;
	height:275px;
	perspective:800px;
	position:absolute;
	margin-left:-250px;
	margin-top:-137.5px;
}
.profile-card-wrapDev .contentDev{
	width:375px;
	padding:30px;
	height:inherit;
	position:relative;
	backface-visibility:hidden;
	background:rgba(255,255,255,.5);
	border:1px solid rgba(0,0,0,.35);
	transform:rotateY(180deg);
	transition:transform .4s ease-in-out 0s;
}
.profile-card-wrapDev .contentDev:before{
	top:50%;
	right:40px;
	height:30px;
	font-size:18px;
	border:inherit;
	padding:2px 8px;
	margin-top:-10px;
	line-height:24px;
	background:inherit;
	content:attr(data-text);
	backface-visibility:visible;
	transform:rotateY(-180deg) scale(1);
	transition:transform .4s ease-in-out 0s;
	text-shadow:1px 1px 0 rgba(255,255,255,.45);
}
.profile-card-wrapDev .contentDev .titleDev{
	font-size:24px;
	font-weight:500;
	margin-bottom:30px;
}
.profile-card-wrapDev .contentDev p{
	margin:0;
	max-width:190px;
	line-height:24px;
	text-align:center;
}
.profile-card-wrapDev .link-infoDev{
	top:50%;
	right:35px;
	width:180px;
	height:180px;
	margin-top:-90px;
	position:absolute;
}
.profile-card-wrapDev .link-infoDev .socialDev{
	top:50%;
	right:50%;
	z-index:1;
	width:35px;
	height:35px;
	position:absolute;
	margin-top:-17.5px;
	margin-right:-17.5px;
}
.profile-card-wrapDev .link-infoDev .socialDev .linkDev{
	color:#fff;
	width:35px;
	height:35px;
	transform:none;
	line-height:33px;
	text-align:center;
	position:absolute;
	border-radius:50%;
	border:1px solid #444;
	box-shadow:0 3px 4px rgba(47,66,81,.75);
	transition:all .3s cubic-bezier(0.680, 1.550, 0.265, 1);
}
.profile-card-wrapDev .link-infoDev .socialDev .fbDev{
	background:#3b5a9a;
	border-color:#384f76;
}
.profile-card-wrapDev .link-infoDev .socialDev .twDev{
	background:#29a9e1;
	border-color:#2a7a9b;
}
.profile-card-wrapDev .link-infoDev .socialDev .cpDev{
	background:#000000;
	border-color:#474848;
}
.profile-card-wrapDev .link-infoDev .socialDev .piDev{
	background:#cd2129;
	border-color:#942825;
}
.profile-card-wrapDev .link-infoDev .socialDev .liDev{
	background:#117bb8;
	border-color:#1c5d7d;
}
.profile-card-wrapDev .link-infoDev .socialDev .ytDev{
	background:#cb312e;
	border-color:#933532;
}
.profile-card-wrapDev .link-infoDev .socialDev .gpDev{
	background:#df4b38;
	border-color:#974336;
}

.profile-card-wrapDev .link-infoDev .photoDev{
	z-index:2;
	width:inherit;
	height:inherit;
	overflow:hidden;
	position:relative;
	border-radius:50%;
	border:5px solid #fff;
	transform:scale(.6);
	background:url(https://raw.githubusercontent.com/khadkamhn/profile-card/master/designer.jpg) #fff no-repeat center / cover;
	box-shadow:0 0 2px, 0 5px 5px rgba(47,66,81,.75);
	transition:transform .5s ease-in-out 0s;
}
.profile-card-wrapDev .link-infoDev .photoDev:after{
	width:170px;
	height:170px;
	border-radius:inherit;
	background:rgba(54,106,157,.2);
}

.profile-card-wrapDev .checkDev{display:none}
.profile-card-wrapDev .toggleDev{
	top:50%;
	z-index:5;
	left:-20px;
	width:40px;
	height:40px;
	color:#031b21;
	cursor:pointer;
	font-size:28px;
	line-height:40px;
	text-align:center;
	margin-top:-15px;
	border-radius:50%;
	position:absolute;
	background:#fff;
	-webkit-user-select:none;
	box-shadow:0 4px 4px #333;
	transition:color, background, transform .1s ease-in-out 0s;
}
.profile-card-wrapDev .checkDev:checked + .toggleDev{
	color:#fff;
	background:#031b21;
	transform:rotate(135deg);
	box-shadow:2px -2px 4px #333;
}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev{
	transform:rotateX(0);
}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev:before{
	backface-visibility:hidden;
	transform:rotateX(-180deg) scale(0);
}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .linkDev{
	transform:none;
}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .linkDev:nth-child(1){transform:translate(30px,-120px)}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .linkDev:nth-child(2){transform:translate(80px,-100px)}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .linkDev:nth-child(3){transform:translate(115px,-55px)}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .linkDev:nth-child(4){transform:translate(125px,0)}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .linkDev:nth-child(5){transform:translate(115px,55px)}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .linkDev:nth-child(6){transform:translate(80px,100px)}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .linkDev:nth-child(7){transform:translate(30px,120px)}
.profile-card-wrapDev .checkDev:checked + .toggleDev + .contentDev + .link-infoDev .photoDev{
	transform:scale(1);
	animation:bounceIn .4s;
}

@keyframes bounceIn{
	0%,20%,40%,60%,80%,100%{animation-timing-function:cubic-bezier(0.215, 0.610, 0.355, 1.000)}
	0%{opacity:0;transform:scale3d(.3,.3,.3)}
	20%{transform:scale3d(1.1,1.1,1.1)}
	40%{transform:scale3d(.9,.9,.9)}
	60%{opacity:1;transform:scale3d(1.03,1.03,1.03)}
	80%{transform:scale3d(.97,.97,.97)}
	100%{opacity:1;transform:scale3d(1,1,1)}
}
    </style>
   <div class="bodyDev">
	   <div class="profile-card-wrapDev">
	<input id="check" type="checkbox" class="checkDev"><label for="check" class="toggleDev"> + </label>
	<div class="contentDev" data-text="&#2350; &#2344;&#2375;&#2346;&#2366;&#2354;&#2368; &#2357;&#2375;&#2348; &#2337;&#2367;&#2332;&#2366;&#2312;&#2344;&#2352; &#2361;&#2369;&#2305; &#2404;">
		<div class="titleDev">@khadkamhn</div>
		<p>I'm a web and graphics designer from Nepal. Designing is my passion and I am still learning and developing my skills on graphics designing and coding.</p>
	</div>
	<div class="link-infoDev">
		<div class="socialDev">
			<a class="linkDev fbDev" href="https://facebook.com/khadkamhn" target="_blank"><i class="faDev fa-facebookDev"></i></a>
			<a class="linkDev twDev" href="https://twitter.com/khadkamhn" target="_blank"><i class="faDev fa-twitterDev"></i></a>
			<a class="linkDev cpDev" href="https://codepen.io/khadkamhn" target="_blank"><i class="faDev fa-codepenDev"></i></a>
			<a class="linkDev piDev" href="https://pinterest.com/khadkamhn" target="_blank"><i class="faDev fa-pinterestDev"></i></a>
			<a class="linkDev liDev" href="https://linkedin.com/in/khadkamhn" target="_blank"><i class="faDev fa-linkedinDev"></i></a>
			<a class="linkDev ytDev" href="https://youtube.com/" target="_blank"><i class="faDev fa-youtube-playDev"></i></a>
			<a class="linkDev gpDev" href="https://plus.google.com/114365866127436577739/" target="_blank"><i class="faDev fa-google-plusDev"></i></a>
		</div>
		<div class="photoDev"></div>
	</div>
</div>
       </div>
</asp:Content>

