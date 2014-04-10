<%
/** 
 *	@author Lyon Lin - 2014.04.09 - init
 */
%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>EUI Templates</title>
	<link rel="stylesheet" type="text/css" href="Resource/css/reset.css">
	<link rel="stylesheet" type="text/css" href="Resource/jquery-ui/themes/redmond/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="Resource/jquery-layout/jquery.layout.css">
	<link rel="stylesheet" type="text/css" href="Resource/css/header.css" />
	<script type="text/javascript" src="Resource/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="Resource/jquery-ui/jquery-ui.js"></script>
	<script type="text/javascript" src="Resource/jquery-layout/jquery.layout.js"></script>
	<style type="text/css">
		html, body {
			background:	#666;
			width:		100%;
			height:		100%;					
			padding:	0;
			margin:		0;
			overflow:	auto; /* when page gets too small */
			font-size: 12px;
		}
		#container {
			background:	#999;
			height:		100%;
			margin:		0 auto;
			width:		100%;
			max-width:	1200px;
			min-width:	700px;
			_width:		700px; /* min-width for IE6 */
		}
		.pane {
			display: none;
			border: 0px;
		}
		.ui-accordion .ui-accordion-content{
			height: 200px;
			padding: 1em 1.3em;
		}	
		.menuItem{
			cursor: pointer;
			text-decoration: none;
			color: black;
		}
		.menuItem:hover {
			color: #ff3300;
		}
		.menuItem-now{
			color: #0E2D5F;
			text-decoration: underline;			
		}
		iframe {
			padding:	0 !important; /* iframes should not have padding */
			overflow:	auto !important;
		}
	</style>	
	<script type="text/javascript">
		$(document).ready(function () {
			var Layout = $("#container").layout({
				applyDefaultStyles: false,
				spacing_open: 0
			});
			Layout.sizePane("north", 70);
			Layout.sizePane("west", 180);
			Layout.sizePane("south", 30);
	
			$( "#accordion" ).accordion();

			$(".menuItem").click(function() {
				$(".menuItem-now").attr( "class", "menuItem" );
				$(this).attr( "class", "menuItem-now" );
				$('#mainFrame').attr("src", "./" + $(this).attr("id") + ".jsp");  
			});

			// DEBUG
			//$('#mainFrame').attr("src", "./userMaintain.jsp");  
						
		});
	</script>
</head>
<BODY>
<div id="container">
	
	<!-- HEADER -->
	<div class="pane ui-layout-north" style="padding: 0px;">
		<div id="header">
	    	<div id="header_l">
	        </div> 
	        <div id="header_r">
	        	<p>
	        		<a id="welcome" class="menuItem">HOME</a>｜<a>個人資訊</a>｜<a>設定</a>｜<a>登出</a>
				</p>
	        </div>
    	</div>
	</div>
	
	<!-- FOOTER -->
	<div class="pane ui-layout-south" style="padding: 0px;">
		<div id="footer">
	    	Lyon Lin Copyright © 2014
    	</div>
	</div>		
	
	<!-- LEFT MENU -->
	<div class="pane ui-layout-west" style="padding: 2px 2px 2px 5px;">
		<div id="accordion">
		  <h3>業務</h3>
		  <div>
		  	<table>
   				<tr>
   					<td width="30px"><img src='Resource/img/book.png'/></td>
   					<td><a id='001' class='menuItem'>業務一</a></td>
   				</tr>
    		</table>		    
		  </div>
		  <h3>管理</h3>
		  <div>
		    <table>
   				<tr height="40px">
   					<td width="30px"><img src='Resource/img/user.png'/></td>
   					<td><a id='userMaintain' class='menuItem'>人員維護</a></td>
   				</tr>
   				<tr>
   					<td width="30px"><img src='Resource/img/book.png'/></td>
   					<td><a id='noticeMaintain' class='menuItem'>公告維護</a></td>
   				</tr>
    		</table>
		  </div>
		  <h3>工具</h3>
		  <div>
		    <table>
   				<tr>
   					<td width="30px"><img src='Resource/img/link.png'/></td>
   					<td><a id='weblink' class='menuItem'>外部連結</a></td>
   				</tr>
    		</table>
		  </div>
		</div>
	</div>
		
	
	<!-- IFRAME CONTENT -->
	<iframe id="mainFrame" class="pane ui-layout-center" src="./welcome.jsp" frameborder="0" scrolling="auto"></iframe>
	
</div>
</BODY>
</HTML>