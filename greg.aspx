<%@ Page Language="C#" AutoEventWireup="true" CodeFile="greg.aspx.cs" Inherits="greatseo_greg" %>


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
                text-align: left;
            }
            .style2
            {
                width: 475px;
            }
            .style3
            {
                color: #FF0000;
            }
            .style4
            {
                width: 475px;
                height: 50px;
            }
            .style5
            {
                width: 564px;
                text-align: left;
                height: 50px;
            }
             body
            {
                background-image: url('1657858.jpg');
                background-repeat :no-repeat;
                background-attachment :fixed;
                background-size : 100% 100%;
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
								
								<a class="dropdown-item" href="greg.aspx">Customer Registration</a>
								<a class="dropdown-item" href="glogin.aspx">Customer Login</a>
								
							</div>
						</li>
						<!--<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Services </a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="services.html">News Paper</a>
								<a class="dropdown-item" href="services.html">Magazines</a>
								<!--<a class="dropdown-item" href="services.html">Email Marketing</a>
								<a class="dropdown-item" href="services.html">Website Development</a>
								<a class="dropdown-item" href="services.html">Social Media Marketing</a>
								<a class="dropdown-item" href="services.html">Pay Per Click</a>
							</div>
						</li>-->
                        <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
						<!--<li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>-->
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
    

	
 
	</div><!-- /slider-wrapper -->

    
    



   <br />
    <table align=center class="w-100">
        <tr>
            <td colspan="2">
                &nbsp; 
                <h2 style="font-family: 'book Antiqua'; font-size: 300%; font-weight: bold; font-style: normal; color: #000000">Customer Registration</h2></td>
            <td rowspan="9">
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style3">
                <strong>*&nbsp;&nbsp;Mandatory Fields &nbsp;</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp; 
                <h2 style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">Full name</h2></td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <h2 style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">Company Name</h2></td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <h2 style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; color: #FFFFFF; font-style: normal">Address</h2></td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
               <h2 style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">Phone</h2></td>
            <td class="style1">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Invalid Mobile No" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
               <h2 style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">Email Id</h2></td>
            <td class="style1">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Invalid E-mail Id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <h2 style="font-family: 'book Antiqua'; font-size: 200%; font-weight: bold; font-style: normal; color: #FFFFFF">Password</h2> </td>
            <td class="style1">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Register" 
                    onclick="Button1_Click" Font-Bold="True" BackColor="#999999" 
                    BorderColor="#999999" />
                <asp:Label ID="Label1" runat="server" BackColor="White" BorderColor="White"></asp:Label>
            </td>
        </tr>
    </table>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/greatseo/glogin.aspx" ForeColor="Black"><h2>Already has an Account ?</h2></asp:HyperLink>
   <br />
   <br />
   <br />
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