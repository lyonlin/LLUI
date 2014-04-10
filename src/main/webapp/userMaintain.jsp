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
	<link rel="stylesheet" type="text/css" href="Resource/jqgrid/ui.jqgrid.css">
	<link rel="stylesheet" type="text/css" href="Resource/css/icon.css">
	<link rel="stylesheet" type="text/css" href="Resource/css/layout.css">
	<script type="text/javascript" src="Resource/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="Resource/jquery-ui/jquery-ui.js"></script>
	<script type="text/javascript" src="Resource/jqgrid/grid.locale-tw.js"></script>
	<script type="text/javascript" src="Resource/jqgrid/jquery.jqGrid.min.js"></script>	
	<style>
		body {
			font-size: 12px;
			padding: 5px;
		}
		.ui-th-column
		{
			background: #F4F4F4;
			
		}		
	</style>	
	<script type="text/javascript">
	$(document).ready(function() {
		$( "#tabs" ).tabs();

		// 人員列表
		jQuery("#userList").jqGrid({
			url: './json/user.json',
			datatype: "json",
			height: 250,
		   	colNames:['人員編號','姓名', '登入帳號', '建立日期', '所屬群組'],
		   	colModel:[
				{name:'no',index:'no', width:100},
				{name:'name',index:'name', width:100},
				{name:'account',index:'account', width:100},
				{name:'cDate',index:'cDate', width:100},
				{name:'group',index:'group', width:200}
		   	],
		   	rowNum: 10,
		   	rowList: [10,20,30],
		   	pager: '#userPager',
		   	sortname: 'no',
		    viewrecords: true,
		    sortorder: "asc",
		    loadonce: true,
		    rownumbers: true,
		    toolbar: [true,"top"]
		});

		jQuery("#userList").jqGrid('navGrid','#userPager',{edit:false,add:false,del:false});

		$("#t_userList").css('height','32px');
		$("#t_userList").append("<div style='margin: 3px;''><select><option>全部群組</option></select><input type='text' placeholder='請輸入關鍵字'/><div>");

		// 群組列表
		$("#groupList").jqGrid({
			url: './json/group.json',
			datatype: "json",
			height: 250,
		   	colNames:['群組名稱','群組描述', '人員數', '權限數', '最後修改日期', '建立日期'],
		   	colModel:[
				{name:'name',index:'name', width:100},
				{name:'desc',index:'desc', width:150},
				{name:'userNum',index:'userNum', width:50},
				{name:'permNum',index:'permNum', width:50},
				{name:'uDate',index:'uDate', width:120},
				{name:'cDate',index:'cDate', width:120}
		   	],
		   	loadonce: true,
		    rownumbers: true,
		    toolbar: [true,"top"]
		});

		$("#t_groupList").css('height','32px');
		$("#t_groupList").append("<div style='margin: 3px;''><input type='text' placeholder='請輸入關鍵字'/><div>");
				
	});	
	</script>
</head>

<body>
	<div id="tabs">
		<ul>
		  <li><a href="#tabs-1">人員維護</a></li>
		  <li><a href="#tabs-2">群組維護</a></li>
		</ul>
		<div id="tabs-1">
			<div>
				<div style="padding:2px;border:1px solid #95B8E7;background-color: #E6F0FF;margin-bottom: 5px;">
					<a id="addBtn" href="#" class="linkbutton">
						<span class="l-btn-left"><span class="l-btn-text icon-add l-btn-icon-left">新增人員</span></span>
					</a><a id="editBtn" href="#" class="linkbutton">
						<span class="l-btn-left"><span class="l-btn-text icon-edit l-btn-icon-left">修改</span></span>
					</a><a id="delBtn" href="#" class="linkbutton">
						<span class="l-btn-left"><span class="l-btn-text icon-remove l-btn-icon-left">刪除</span></span>
					</a>
			    </div>
			    <table id="userList"></table>
			    <div id="userPager"></div>
			</div>
		</div>
		<div id="tabs-2">
			<div>
				<div style="padding:2px;border:1px solid #95B8E7;background-color: #E6F0FF;margin-bottom: 5px;">
					<a id="addBtn2" href="#" class="linkbutton">
						<span class="l-btn-left"><span class="l-btn-text icon-add l-btn-icon-left">新增群組</span></span>
					</a><a id="editBtn2" href="#" class="linkbutton">
						<span class="l-btn-left"><span class="l-btn-text icon-edit l-btn-icon-left">修改</span></span>
					</a><a id="delBtn2" href="#" class="linkbutton">
						<span class="l-btn-left"><span class="l-btn-text icon-remove l-btn-icon-left">刪除</span></span>
					</a>
			    </div>
			    <table id="groupList"></table>
			</div>
		</div>
	</div>
</body>

</html>