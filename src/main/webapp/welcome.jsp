<%
/** 
 *	@author Lyon Lin - 2014.04.10 - init
 */
%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="Resource/css/reset.css">
	<link rel="stylesheet" type="text/css" href="Resource/jquery-ui/themes/redmond/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="Resource/css/header.css" />
	<script type="text/javascript" src="Resource/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="Resource/jquery-ui/jquery-ui.js"></script>
	<style>
		body {
			font-size: 12px;
			padding: 5px;
		}	
	</style>	
	<script type="text/javascript">
	$(document).ready(function() {
		$( "#tabs" ).tabs();		
	});	
	</script>
</head>

<body>
	<div id="tabs">
		<ul>
		  <li><a href="#tabs-1">歡迎光臨</a></li>
		</ul>
		<div id="tabs-1">
			<div>
				<h3>版本: 0.1</h3>
				<h3>展示頁: 管理-人員維護</h3>
			</div>
		</div>
	</div>
</body>

</html>