<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" /> 
<script src="js/easyui/jquery.min.js"></script>
<script src="js/easyui/jquery.easyui.min.js"></script>
<script src="js/easyui/locale/easyui-lang-zh_CN.js"></script>
<link href="js/easyui/themes/default/easyui.css" rel="stylesheet">
<link href="js/easyui/themes/icon.css" rel="stylesheet">

<!--上传组件样式  -->
<link href="js/webuploader/webuploader.css" rel="stylesheet">
<!-- 上传组件js -->
<script src="js/webuploader/webuploader.min.js"></script>
<script src="js/webuploader/MyWebUpload.js"></script>
<link href="js/webuploader/webuploader.css" rel="stylesheet">

<!-- echarts -->
<script src="js/echarts/echarts.js"></script>

<script type="text/javascript" src="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.js"></script>
<link rel="stylesheet" href="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.css" />

<script src="js/waterfall/libs/handlebars/handlebars.js"></script>
<script src="js/waterfall/build/waterfall.min.js"></script>
<style type="text/css">  
    html{height:100%}    
    body{height:100%;margin:0px;padding:0px}    
    #container{height:100%}    
</style> 
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=	ei1Coanp8y4yglHdOD2THOvTUOiFYUbL"></script>
</head>
<body>
<!-- 隐藏按钮 -->
	<span id="select_news" style="display:none">
		<div id="set_delete" class="easyui-linkbutton" data-options="plain:true">删除</div>
	</span>
	<span id="select_news1" style="display:none">
		<div id="set_edit" class="easyui-linkbutton" data-options="plain:true" >编辑</div>
	</span>
<h2>Hello World!</h2>
	<input type="button" value="新增内容" onclick="insertnews()">
	<input type="button" value="打开新窗口" onclick="openwidows()">
	
		<!-- <form name="Form2" action="fileUpload2.do" method="post"  enctype="multipart/form-data">
			<h1>采用multipart提供的file.transfer方法上传文件</h1>
			<input type="file" name="file">
			<input type="submit" value="upload"/>
		</form> -->
		
	<!-- <input type="button" value="图片" onclick="get()"> -->
	<div id="uploader" style="margin-left:10px"></div>
	<div id="kdx-dg" style="width: 410px;height:400px;"></div>
	<div id="kdx-girl" style="width: 350px;height:200px;"></div>
	<div id="dd"></div>
	<div id="update"></div>
	<div id="main1" style="width: 600px;height:400px;"></div>
    <div id="echartsPie" style="width: 600px;height:400px;"></div> 
    <div id="container"  style="width: 600px;height:400px;"></div> 
	
	
	<!-- javascript -->
	  <script>
	   $(function() {
	        select();
	    });
	  /*  function get(){
		   location.href = 'image.do';
	   } */
	   
	   
	   /* //创建地图实例
	   var map = new BMap.Map("container");   
		// 创建点坐标  
	   map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);    
	   map.addControl(new BMap.NavigationControl());
	   //开启鼠标控制
	   map.enableScrollWheelZoom(true);
	   map.addControl(new BMap.NavigationControl());    
	   map.addControl(new BMap.ScaleControl());    
	   map.addControl(new BMap.OverviewMapControl());    
	   map.addControl(new BMap.MapTypeControl());    
	   map.setCurrentCity("北京"); 
	   var styleOptions = {
			    strokeColor:"red",    //边线颜色。
			    fillColor:"red",      //填充颜色。当参数为空时，圆形将没有填充效果。
			    strokeWeight: 3,       //边线的宽度，以像素为单位。
			    strokeOpacity: 0.8,    //边线透明度，取值范围0 - 1。
			    fillOpacity: 0.6,      //填充的透明度，取值范围0 - 1。
			    strokeStyle: 'solid' //边线的样式，solid或dashed。
			}
			    //实例化鼠标绘制工具
			var drawingManager = new BMapLib.DrawingManager(map, {
			    isOpen: false, //是否开启绘制模式
			    enableDrawingTool: true, //是否显示工具栏
			    drawingToolOptions: {
			        anchor: BMAP_ANCHOR_TOP_RIGHT, //位置
			        offset: new BMap.Size(5, 5), //偏离值
			    },
			    circleOptions: styleOptions, //圆的样式
			    polylineOptions: styleOptions, //线的样式
			    polygonOptions: styleOptions, //多边形的样式
			    rectangleOptions: styleOptions //矩形的样式
			});   */
	  
	     
	   function openwidows(){
		   
		   location.href = 'openwidows.do';
	   }
	   	
	   //初始化查询列表
	    function select() {
	        $('#kdx-dg').datagrid({
	            url:'show_list.do',
	            columns:[[
	                {field:'userid',title:'ID',width:100},
	                {field:'userName',title:'标题',width:100},
	                {field:'usersex',title:'内容',width:100},
	                {field:'sc',title:'删除',width:50,
	                	formatter:function(v , r, i ){
	                		$("#set_delete").attr("onclick","deleteNews(" + r.userid + ")");
	                        return $("#select_news").html();
	                    }},
                    {field:'xg',title:'修改',width:50,
	                	formatter:function(v , r, i ){
	                		$("#set_edit").attr("onclick","editeNews(" + r.userid + ")");
	                        return $("#select_news1").html();
	                    }}
	            ]]
	        });
	        $('#kdx-girl').datagrid({
	            url:'selectgirl.do',
	            columns:[[
	                {field:'gid',title:'ID',width:100},
	                {field:'name',title:'标题',width:100},
	                {field:'value',title:'内容',width:100}
	                
	            ]]
	        });
	    }
	   
	     
	   //新增
	    function insertnews(){
	    	var dd = $('<div></div>').dialog({
	    	    title: 'My Dialog',    
	    	    width: 400,    
	    	    height: 200,    
	    	    href: 'insert.do',    
	    	    onClose:function() {
                    //销毁对话框
                    dd.dialog("destroy");
                },
	    	    buttons:[{
					text:'保存',
					handler:function(){
						$.ajax({
	                        url:"insertNews.do",
	                        data:get_add_date(),
	                        type:"post",
	                        dataType:"json",
	                        success:function(data) {
	                            //销毁对话框
	                            dd.dialog("destroy");
	                            //列表重新刷新
	                            $('#kdx-dg').datagrid("load");
	                            alert("新增成功")
	                        }
	                    });
					}
				},{
					text:'关闭',
					handler:function(){
						 dd.dialog("destroy");
					}
				}], 
	    	});  
	    }
	    
	   //删除
	    function deleteNews(userid){
	    	$.messager.confirm('确认','您确认想要删除记录吗？',function(r){
	            if (r){
	                $.ajax({
	                    url:"deleteNews.do?userid="+userid,
	                    type : "DELETE", 
	                    success:function(data){
	                        select();
	                        alert("删除成功")
	                    }
	                })
	            }
	        });
	    }
	    // 修改
	    function  editeNews(userid){
	    	var update = $('<div></div>').dialog({
	    	    title: 'My Dialog',    
	    	    width: 400,    
	    	    height: 200,    
	    	    href: 'update.do?userid='+userid,    
	    	    onClose:function() {
                    //销毁对话框
                    dd.dialog("destroy");
                },
	    	    buttons:[{
					text:'保存',
					handler:function(){
						$.ajax({
	                        url:"updateeditNews.do",
	                        data:$("#editlist").serialize(),
	                        type:"post",
	                        dataType:"json",
	                        success:function(data) {
	                            //销毁对话框
	                            update.dialog("destroy");
	                            //列表重新刷新
	                            $('#kdx-dg').datagrid("load");
	                            alert("新修改成功")
	                        }
	                    });
					}
				},{
					text:'关闭',
					handler:function(){
						update.dialog("destroy");
					}
				}], 
	    	});  
	    }
	    
	    // 主状报表
	    var myChart = echarts.init(document.getElementById('main1'));
        // 显示标题，图例和空的坐标轴
        myChart.setOption({
            title: {
                text: '异步数据加载示例'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: []
            }]
        });
        
        myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
        
        var names=[];    //类别数组（实际用来盛放X轴坐标值）
        var nums=[];    //销量数组（实际用来盛放Y坐标值）
        
        $.ajax({
        type : "post",
        async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "testServlet.do",    //请求发送到TestServlet处
        dataType : "json",        //返回数据形式为json
        success : function(result) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            if (result) {
                   for(var i=0;i<result.length;i++){       
                      names.push(result[i].commodityname);    //挨个取出类别并填入类别数组
                    }
                   for(var i=0;i<result.length;i++){       
                       nums.push(result[i].commoditynum);    //挨个取出销量并填入销量数组
                     }
                   myChart.hideLoading();    //隐藏加载动画
                   myChart.setOption({        //加载数据图表
                       xAxis: {
                           data: names
                       },
                       series: [{
                           // 根据名字对应到相应的系列
                           name: '销量',
                           data: nums
                       }]
                   });
         	  }
      	 },
        error : function(errorMsg) {
            //请求失败时执行该函数
        alert("图表请求数据失败!");
        myChart.hideLoading();
        }
   }); 
        
		//饼报表
       function bind(result){
            // 基于准备好的dom，初始化echarts图表
            var TypeSalesChart = echarts.init(document.getElementById('echartsPie'));
            var option = {
                tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
             },
             title: {
                 text: '女神年龄',
                 left: 'center',
                 top: 20,
                 textStyle: {
                     color: '#ccc'
                 }
             },
            legend: {
                    orient : 'vertical',
                    x : 'left',
                    data:(function(){
                            var res = [];
                            var len = result.length;
                                for(var i=0,size=len;i<size;i++) {
                                 res.push({
                                     name: result[i].name,
                                 });
                                }
                                return res;
                        })()
                },
                toolbox: {  
                    show : true,  
                    feature : {  
                        mark : {show: true},  
                        dataView : {show: true, readOnly: false},  
                        magicType : {  
                            show: true,   
                            type: ['pie', 'funnel'],  
                            option: {  
                                funnel: {  
                                    x: '25%',  
                                    width: '50%',  
                                    funnelAlign: 'left',  
                                    max: 1548  
                                }  
                            }  
                        },  
                        restore : {show: true},  
                        saveAsImage : {show: true}  
                    }  
                },  
                calculable : true, 
                series : [
                    {
                        name:'访问来源',
                        type:'pie',
                        radius : '55%',
                        center: ['50%', '60%'],
                        data:(function(){
                            var res = [];
                            var len = result.length;
                                for(var i=0,size=len;i<size;i++) {
                                 res.push({
                                     //通过把result进行遍历循环来获取数据并放入Echarts中
                                     name: result[i].name,
                                     value: result[i].value
                                 });
                                }
                                return res;
                        })()
                    }
                ]
                
            };
            
            // 为echarts对象加载数据 
            TypeSalesChart.setOption(option);
        } 
  
	</script>
	
	 <script type="text/javascript">
        $.ajax({
            type : 'post',
            async : true, //同步执行
                url :'selectgirl.do', //web.xml中注册的Servlet的url-pattern
                data : {}, //无参数
                dataType : 'json', //返回数据形式为json
                success : function(result) {
                    if (result) {
                        //把result(即Json数据)以参数形式放入Echarts代码中
                        bind(result);
                    }
                },
                error : function(errorMsg) {
                    alert("加载数据失败");
                   
                }
            }); 
        </script>
</body>
</html>