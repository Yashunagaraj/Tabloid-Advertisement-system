﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="geditpwd.aspx.cs" Inherits="greatseo_geditpwd" %>

<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>Tabloid Advertisement System</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
	
	<script src="js/modernizr.custom.79639.js"></script>
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
        <style type="text/css">
            .style1
            {
                width: 564px;
            }
             body
            {
                background-image: url('edit pswd 1.jpg');
                background-repeat :no-repeat;
                background-attachment :fixed;
                background-size : 100% 100%;
            }
            .style2
            {
                width: 475px;
            }
        </style>
    </head>
<body class="seo_version">

	<form id="form1" runat="server">

	
	
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
             <h2>TABLOID ADVERTISEMENT</h2>
				<%--<a class="navbar-brand" href="index.html">
					<img src="images/logo-seo.png" alt="" />
				</a>--%>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-seo" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-seo">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="guestHomepage.aspx">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="geditpwd.aspx">Profile</a></li>
						
						<%--<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Book Ads </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="bookads.aspx">News Paper ADS</a>
								<a class="dropdown-item" href="bookads.aspx">Magazines ADS</a>
								
							</div>
						</li>--%>
                        <li class="nav-item"><a class="nav-link" href="bookads.aspx">Book Ads</a></li>
						<li class="nav-item"><a class="nav-link" href=gorderhistory.aspx>Order History</a></li>
						<li class="nav-item"><a class="nav-link" href="index.html">Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
    

	
 
	</div><!-- /slider-wrapper -->

    
    



   <br />
   <br />
   <br />
   <br />
    <table align=center class="w-100">
        <tr>
            <td colspan="2" 
                style="text-align: center; font-family: 'book Antiqua'; font-size: 300%; font-weight: bold; font-style: normal;">
                Customer&nbsp; Edit Profile</td>
            <td rowspan="7">
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">
                Address</td>
            <td class="style1">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">
                Phone Number</td>
            <td class="style1">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">
                Old Password</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">
                New
                Password</td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">
                Confirm Password</td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" Text="Update Password" 
                    onclick="Button1_Click" BackColor="#999999" BorderColor="#999999" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
   <br />
   <br />

    

   
	

    </form>
     <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/tippy.all.min.js"></script>
    <script src="js/custom.js"></script>
	
	<script src="js/jquery.ba-cond.min.js"></script>
	<script src="js/jquery.slitslider.js"></script>
	<script type="text/javascript">
	    $(function () {

	        var Page = (function () {

	            var $nav = $('#nav-dots > span'),
						slitslider = $('#slider').slitslider({
						    onBeforeChange: function (slide, pos) {

						        $nav.removeClass('nav-dot-current');
						        $nav.eq(pos).addClass('nav-dot-current');

						    }
						}),

						init = function () {

						    initEvents();

						},
						initEvents = function () {

						    $nav.each(function (i) {

						        $(this).on('click', function (event) {

						            var $dot = $(this);

						            if (!slitslider.isActive()) {

						                $nav.removeClass('nav-dot-current');
						                $dot.addClass('nav-dot-current');

						            }

						            slitslider.jump(i + 1);
						            return false;

						        });

						    });

						};

	            return { init: init };

	        })();

	        Page.init();

	    });
		</script>
		
		<script>
		    tippy('.btn-a')
		</script>



</body>
</html>