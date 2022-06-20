<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    background-image: url("./images/loginBg.jpg");
    z-index: -1;
}

.login{
    width:35%;
    height:65%;
    background-color:white;
    margin-left: auto;
    margin-right: auto;
    margin-top:140px;
    /* opacity: 0.7; */
    border:1px solid grey;
    border-radius:2%;
}
.box{
    width:205px;
    height:220px;
    margin:90px auto;
    
    /* background-color: aquamarine; */
}
.box p{
    
    height:30px;
    font-size: 20px;
    font-family: "微软雅黑";
    color:black;
    line-height: 30px;
    /* font-weight: bold; */
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
    margin-top: 20px;
}
</style>
</head> 
<body>
    <div class="bg">
       <div class="login">
           <div class="box">
               <p>登录</p>
               <form method="post" class="login?method=login">
                   <input type="text" name="username"  placeholder=" 请输入账号" class="i1"/><br/><br/>
                   <input type="password" name="password"  placeholder=" 请输入密码"/><br/><br/>
                   <button type="submit">登录</button>
               </form>
           </div>
       </div>
   </div>
</body>
</html>