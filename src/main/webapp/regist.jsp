<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Insert title here</title>
	<style type="text/css">
		*{
		    margin:0px;
		    padding:0;
		}
		.bg{
		    position: absolute;
		    width:100%;
		    height:100%;
		    background-image: url("images/loginBg.jpg");
		    z-index: -1;
		}
		
		.login{
		    width:35%;
		    height:75%;
		    background-color:white;
		    margin-left: auto;
		    margin-right: auto;
		    margin-top:120px;
		    border:1px solid grey;
		    border-radius:2%;
		}
		.box{
		    width:205px;
		    height:380px;
		    margin:30px 105px;
		}
		.box p{
		    
		    height:30px;
		    font-size: 20px;
		    font-family: "微软雅黑";
		    color:black;
		    line-height: 30px;
		    border-bottom:1px solid teal;
		}
		.box input{
		    width:200px;
		    height:30px;
		    border-radius:4px;
		    outline: none;
		    border:1px solid gray;
		}
		.i1{
		    margin-top:30px;
		}
		.p1{
		    display: inline-block;
		    margin-left: 34px;
		    color:black;
		    font-size: 13px;
		}
		.box button{
		    color:white;
		    font-size:16px;
		    font-weight: bold;
		    width:100px;
		    height:40px;
		    border:0px;
		    background-color:rgb(116, 205, 255);
		    border-radius: 2px;
		    margin-left: 50px;
		    margin-top: 10px;
		}
		span{
			font-size:12px;
			color:red;
		}
			
	</style>
</head>
<body>
    <div class="bg">
        <div class="login">
            <div class="box">
                <p>注册</p>
                <form method="post" class="loginform">
                    <input type="text" name="username"  placeholder=" 请输入姓名" class="i1"/>
                    <span id="username"></span><br/><br id="br_username"/>
                    <input type="password" name="password"  placeholder=" 请输入密码"/>
                    <span id="password"></span><br/><br id="br_password"/>
                   	<input type="text" name="uid"  placeholder=" 请输入身份证号"/>
                    <span id="uid"></span><br/><br  id="br_uid"/>
                 	<input type="text" name="phone"  placeholder=" 请输入手机号"/>
                    <span id="phone"></span><br/><br id="br_phone"/>
                    <input type="text" name="email"  placeholder=" 请输入邮箱"/>
                    <span id="email"></span><br/><br id="br_email"/>
                    <button type="submit">同意并注册</button>
                </form><br/>
                <span class="p1">我已有账户，直接<a href="login.jsp">登录</a></span>
            </div>
        </div>
    </div>
</body>
</html>