<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="easyui-layout">   
    <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>   
    <div data-options="region:'west',title:'West',split:true" style="width:100px;"></div>   
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
    	<div id="uploader" style="margin-left:10px"></div>
    	
    	
    	<style type="text/css">  
		    html{height:100%}    
		    body{height:100%;margin:0px;padding:0px}    
		    #container{height:100%}    
		</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=	ei1Coanp8y4yglHdOD2THOvTUOiFYUbL"></script>
    
    
    <div id="container"></div> 
	<script type="text/javascript"> 
	var map = new BMap.Map("container");
	// 创建地图实例  
	var point = new BMap.Point(116.404, 39.915);
	// 创建点坐标  
	map.centerAndZoom(point, 15);
	// 初始化地图，设置中心点坐标和地图级别  
	</script>
    
    </div>
    
    
       
<!-- 	<script type="text/javascript">
	$(function () {
        //渲染容器
        $("#uploader").powerWebUpload({ auto: false,fileNumLimit:5 });
    })
    function GetFiles1() {
       //获取上传的文件地址
        var data = $("#uploader").GetFilesAddress();
        alert(data[0])
    }
	</script> -->
	

</body>
</html>