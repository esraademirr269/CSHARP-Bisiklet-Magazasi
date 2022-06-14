<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="urunler.aspx.cs" Inherits="_151213117_ESRA_DEMiR.urunler" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Easy Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
        new WOW().init();
	</script>
<!--//end-animate-->
<!----webfonts--->
<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<!---//webfonts---> 
 <!-- Meters graphs -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- Placed js at the end of the document so the pages load faster -->

    <style type="text/css">
        .user-panel-top {
            height: 70px;
            margin-left: 0px;
        }
    </style>

</head> 
   
 <body  class="sticky-header left-side-collapsed"  onload="initMap()">
     <form id="form1" runat="server">
          
    <section>
    <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<a href="AnaSayfa.aspx">BİSİKLET <span>MAĞAZASI</span></a>
			</div>
			<div class="logo-icon text-center">
				<a href="AnaSayfa.aspx"><i class="lnr lnr-home"></i> </a>
			</div>

			<!--logo and iconic logo end-->
			<div class="left-side-inner">

				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li ><a href="müsteri.aspx"><i class="lnr lnr-menu"></i><span>MÜŞTERİLER</span></a></li>
						
						<li><a href="magazalar.aspx"><i class="lnr lnr-pencil"></i> <span>MAĞAZALAR</span></a></li>
						<li><a href="marka.aspx"><i class="lnr lnr-book"></i> <span>MARKALAR</span></a></li>              
							
						</li>      
						<li ><a href="stoklar.aspx"><i class="lnr lnr-book"></i> <span>STOKLAR</span></a>  
							
						</li>
						<li class="active"><a href="urunler.aspx"><i class="lnr lnr-book"></i> <span>ÜRÜNLER</span></a></li>
						<li><a href="kategori.aspx"><i class="lnr lnr-book"></i> <span>KATEGORİ</span></a></li>
						<li ><a href="stoklar.aspx"><i class="lnr lnr-book"></i>  <span>STOK</span></a> 
							
						</li>
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
		<!-- left side end-->
        	<div class="sign-in-form">
						<div class="sign-in-form-top">
							<p><span>ARAMA İŞLEMİ</span> </a></p>
						</div>
						<div class="signin">
							<div class="signin-rit">
								
								
								<div class="clearfix"> </div>
							</div>
							
							<div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox3" runat="server" value="ÜRÜN ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'ÜRÜN ADI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								
								<div class="clearfix"> </div>
							</div>
							
                                <asp:Button ID="Button1" runat="server" Text="ARA" OnClick="Button1_Click" />
                           <asp:GridView ID="GridView1" runat="server"></asp:GridView>
						 
						</div>
                        <br />
					</div>
     
        	<div class="sign-in-form">
						<div class="sign-in-form-top">
							<p><span>SİLME İŞLEMİ</span> </a></p>
						</div>
						<div class="signin">
							<div class="signin-rit">
								
								
								<div class="clearfix"> </div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox1" runat="server" value="ÜRÜN ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'ÜRÜN ADI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            <div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox2" runat="server" value="MARKA ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MARKA ADI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            <div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox4" runat="server" value="MODEL YILI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MODEL YILI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
						
                                <asp:Button ID="Button2" runat="server" Text="SİL" OnClick="Button2_Click"  />
                            
						</div>
               
					</div>
<asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

         	<div class="sign-in-form">
						<div class="sign-in-form-top">
							<p><span>EKLEME İŞLEMİ</span> </a></p>
						</div>
						<div class="signin">
							<div class="signin-rit">
								
								
								<div class="clearfix"> </div>
							</div>
                            <div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox5" runat="server" value="ÜRÜN ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'ÜRÜN ADI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            <div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox7" runat="server" value="MARKA ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MARKA ADI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            <div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox8" runat="server" value="MODEL YILI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MODEL YILI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
								    <asp:TextBox ID="TextBox6" runat="server" value="KATEGORİ ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'KATEGORİ ADI';}"></asp:TextBox>
								   </div>
								<span class="checkbox2">
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            
							<div class="log-input">
								<div class="log-input-left">
								    <asp:TextBox ID="TextBox9" runat="server" value="LİSTE FİYATI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'LİSTE FİYATI';}"></asp:TextBox>
								   </div>
								<span class="checkbox2">
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            
                                <asp:Button ID="Button3" runat="server" Text="EKLEME" OnClick="Button3_Click"   />
                               
						 
						</div>
               
					</div>
          	<div class="sign-in-form">
						<div class="sign-in-form-top">
							<p><span>DÜZENLEME İŞLEMİ</span> </a></p>
						</div>
						<div class="signin">
							<div class="signin-rit">
								
								
								<div class="clearfix"> </div>
							</div>
                            <div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox10" runat="server" value="ÜRÜN ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'ÜRÜN ADI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            <div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox11" runat="server" value="MARKA ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MARKA ADI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            <div class="log-input">
								<div class="log-input-left">
                                    <asp:TextBox ID="TextBox12" runat="server" value="MODEL YILI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'MODEL YILI';}"></asp:TextBox>
								   </div>
								
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
								    <asp:TextBox ID="TextBox13" runat="server" value="KATEGORİ ADI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'KATEGORİ ADI';}"></asp:TextBox>
								   </div>
								<span class="checkbox2">
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            
							<div class="log-input">
								<div class="log-input-left">
								    <asp:TextBox ID="TextBox14" runat="server" value="DÜZENLENECEK LİSTE FİYATI" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DÜZENLENECEK LİSTE FİYATI';}"></asp:TextBox>
								   </div>
								<span class="checkbox2">
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""></label>
								</span>
								<div class="clearfix"> </div>
							</div>
                            
                                <asp:Button ID="Button4" runat="server" Text="DUZENLE" OnClick="Button4_Click"   />
                               
						 
						</div>
               
					</div>
		<!-- main content start-->
		<div class="main-content">
			<!-- header-starts -->
			<div class="header-section">
			 
			<!--toggle button start-->
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
			<!--toggle button end-->

			<!--notification menu start -->
			<div class="menu-right">
				<div class="user-panel-top">  	
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										<span style="background:url(images/son.jpg) no-repeat center"> </span> 
										 <div class="user-name">
											<p>RAPORLAR<span>Günlük Aylık Yılık</span></p>
										 </div>
										 <i class="lnr lnr-chevron-down"></i>
										 <i class="lnr lnr-chevron-up"></i>
										<div class="clearfix"></div>	
									</div>	
								</a>
								<ul class="dropdown-menu drp-mnu">
									<li> <a href="gunlukrapor.aspx"> Günlük Rapor</a> </li> 
									<li> <a href="aylikrapor.aspx">Aylık Rapor</a> </li> 
									<li> <a href="yillikrapor.aspx"></i> Yıllık Rapor</a> </li>
								</ul>
							</li>
							<div class="clearfix"> </div>
						</ul>
					</div>		
					<div class="social_icons">
						<div class="col-md-4 social_icons-left">
							<a href="#" class="yui"><i class="fa fa-facebook i1"></i><span>300<sup>+</sup> Likes</span></a>
						</div>
						<div class="col-md-4 social_icons-left pinterest">
							<a href="#"><i class="fa fa-google-plus i1"></i><span>500<sup>+</sup> Shares</span></a>
						</div>
						<div class="col-md-4 social_icons-left twi">
							<a href="#"><i class="fa fa-twitter i1"></i><span>500<sup>+</sup> Tweets</span></a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			  </div>
			<!--notification menu end -->
			</div>
		
		</div>
        
   </section>
  </form>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>