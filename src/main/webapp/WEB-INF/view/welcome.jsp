<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Central Information System</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="welcome page">

<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css" />
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/easyui/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/common.js"></script>

<script type="text/javascript">
	jQuery.ajaxSetup({
		cache : false
	});//ajax不缓存
	jQuery(function($) {
	});

	// add a new tab panel  
	function addtab(title, href) {
		if ($('#tt').tabs('exists', title)) {
			$('#tt').tabs('select', title);
		} else {
			$('#tt').tabs('add', {
				title : title,
				href : href,
				closable : true
			});
		}
	}

	//弹出窗口
	function showWindow(options) {
		jQuery("#MyPopWindow").window(options);
	}
	//关闭弹出窗口
	function closeWindow() {
		$("#MyPopWindow").window('close');
	}
</script>
</head>
<!-- easyui-layout 可分上下左右中五部分，中间的是必须的，支持href，这样就可以不用iframe了 -->
<body class="easyui-layout" id="mainBody">
	<!-- 上 -->
	
	<!-- 左-->
	<div region="west" class="menudiv" split="true" title="系统菜单"
		style="width: 200px; overflow: hidden;">
		<div id="menuDiv" class="easyui-accordion" fit="false" border="false"
			animate="false">
			<div title="用户管理" style="overflow: hidden;">
				<ul>
					<li id="menu1" style="cursor: pointer;"
						onclick="addtab('用户管理','user/list')">用户管理</li>
				</ul>
				<ul>
					<li id="menu2" style="cursor: pointer;"
						onclick="addtab('用户管理','user/list')">用户管理</li>
				</ul>
				<ul>
					<li id="menu3" style="cursor: pointer;"
						onclick="addtab('用户管理','user/list')">用户管理</li>
				</ul>
			</div>
			<div title="部门管理" style="overflow: hidden;">
				<ul>
					<li id="menu4">部门管理</li>
					<li id="menu5">部门管理</li>
				</ul>
			</div>
			<div title="XXX管理" style="overflow: hidden;">
				<ul>
					<li id="menu6">XXX管理</li>
					<li id="menu7">XXX管理</li>
				</ul>
			</div>
			<div title="XXX管理" style="overflow: hidden;">
				<ul>
				</ul>
			</div>
		</div>
	</div>

	<!-- 中 -->
	<div region="center" border="false">
		<div id="tt" class="easyui-tabs" fit="true" border="false"
			plain="true">
			<div title="Home"></div>
		</div>
	</div>
	<div id="MyPopWindow" modal="true" shadow="false" minimizable="false"
		cache="false" maximizable="false" collapsible="false"
		resizable="false" style="margin: 0px; padding: 0px; overflow: auto;"></div>
</body>
</html>
