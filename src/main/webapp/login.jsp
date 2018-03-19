<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/easyui/jquery.min.js"></script>
<script src="js/easyui/jquery.easyui.min.js"></script>
<script src="js/easyui/locale/easyui-lang-zh_CN.js"></script>
<link href="js/easyui/themes/default/easyui.css" rel="stylesheet">
<link href="js/easyui/themes/icon.css" rel="stylesheet">
</head>
<body>
  
		       <form id="login-form">
		       		用户:<input class="easyui-textbox" data-options="iconCls:'icon-man'" style="width:200px" name="user.uname1"><br>
		       		密码：<input type="password" class="easyui-textbox" data-options="iconCls:'icon-lock'" style="width:200px" name="user.upwd1"><br>
		       </form>  
		    

<script type="text/javascript">
	$('#dd').dialog({    
	    title: '请登录',    
	    width: 400,    
	    height: 300,    
	    closed: false,     
	    modal: true,
	    buttons:[{
			text:'登录',
			handler:function(){
				$('#login-form').form({    
				    url:"login.do",  
				    success:function(data){    
				     alert(data);
				     if(data == "-1"){
				    	 alert("验证码错误");
				     }
				     if(data == "0"){
				    	 alert("用户名或密码错误");
				     }
				     if(data == "1"){//登录成功
							//跳转到index
						location.href="index.jsp"
				     }
				     
				    }    
				});    
				$('#login-form').submit();  
			}
		},{
			text:'注册',
			handler:function(){
				$('#reg-form').form({    
				    url:"loginAction!regUser.action",  
				    novalidate:true,
				    onSubmit: function(){    
					 	
				    	var uname = $("[name='user.uname']").val();
						var pwd = $("#upass").val();
						var spwd = $("#spwd").val();
						var mobile = $("#mobile").val();
						var code_reg = $("[name='codeReg']").val();
						var flag = false;
						if (pwd!="" && uname!="" && pwd== spwd && mobile.length ==11) {
							flag = true;
						}
						
						return flag; 
				    },    
				    success:function(data){    
				        alert(data) 
				        if(data == "-1"){
				        	alert("用户名已存在");
				        }
				        if(data == "0"){
				        	alert("验证码错误");
				        }
				        if(data > 0){
				        	//切换到登录的选项卡
				        	$("#login-tab").tabs('select','登录');
				        }
				    }    
				});    
				$('#reg-form').submit();  
				
			}
		}]
	});    
</script>
</body>
</html>