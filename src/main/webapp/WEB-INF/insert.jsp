<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="insertnews">
		名称<input type="text" id="userName" name="userName" ><br>
		年龄<input type="text" id="usersex" name="usersex">  
	</form>
	<script>
	    function get_add_date(){
	        var news_add_json = {
	        		userName:$("#userName").val(),
	        		usersex:$("#usersex").val()
	        };
	        return news_add_json;
	    }
    </script>
</body>
</html>