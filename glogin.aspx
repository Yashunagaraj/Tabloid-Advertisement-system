<%@ Page Language="C#" AutoEventWireup="true" CodeFile="glogin.aspx.cs" Inherits="greatseo_glogin" %>


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
                background-image: url('clogin.jpg');
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
						<li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="A1" data-toggle="dropdown">Login </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
					<%--			<a class="dropdown-item" href="services.html">Admin Login</a>--%>
								<a class="dropdown-item" href="greg.aspx">Customer Registration</a>
								<a class="dropdown-item" href="glogin.aspx">Customer Login</a>
								
							</div>
						</li>
						<%--<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Services </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="services.html">News Paper</a>
								<a class="dropdown-item" href="services.html">Magazines</a>
								<!--<a class="dropdown-item" href="services.html">Email Marketing</a>
								<a class="dropdown-item" href="services.html">Website Development</a>
								<a class="dropdown-item" href="services.html">Social Media Marketing</a>
								<a class="dropdown-item" href="services.html">Pay Per Click</a>-->
							</div>
						</li>--%>
                         <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
						<%--<li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>--%>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
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
                
                style="font-family: 'Book Antiqua'; font-size: 300%; font-weight: bold; font-style: normal; color: #FFFFFF;">
                Customer Login</td>
            <td rowspan="4">
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">
                Email Id</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">
                Password</td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="font-family: 'Book Antiqua'; font-size: 150%; font-weight: bold; font-style: normal">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/greatseo/greg.aspx" ForeColor="White">No Account ?</asp:HyperLink>
            &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/greatseo/forgotpwd.aspx" ForeColor="White">Forgot Password ?</asp:HyperLink>
            </td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                    BackColor="Silver" Font-Bold="True" />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
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