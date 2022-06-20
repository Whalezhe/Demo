<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>主页</title>
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath }/css/home.css" />
	<script type="text/javascript">
	</script>
</head>
<body>
    <div id="header">
        <h1>汽车租赁</h1> 
        <div class="header_a">
            <ul class="ul1">
                <li><a href="#" class="a1"> 车辆信息</a></li>
                <li><a href="${pageContext.request.contextPath }/OrderServlet" class="a1">我的订单</a></li>
                <c:choose>
                	<c:when test="${not empty sessionScope.user }" >
                		<li><span class="lr_b">尊敬的<span style="font-size:16px;text-decoration: underline;">${sessionScope.user.username },</span>&nbsp;您好！</span></li>
                	</c:when>
                 <c:otherwise><li><span class="lr_a"><a href="${pageContext.request.contextPath }/login.jsp">登录</a> / <a href="${pageContext.request.contextPath }/register.jsp">注册</a></span></li></c:otherwise>
            	</c:choose>
            </ul>
        </div>
    </div>
    <div id="content">
        <div class="form_info">
            <h3>租车信息</h3>
            <div class="f1">
            <form action="<c:url value='/CarServlet?method=carList'/>" method="post" class="formStyle">
                取车地点&nbsp;&nbsp;&nbsp;&nbsp;
                <select name="rentCity" id="rentLocat">
                
                </select><br/><br/>
                取车区域&nbsp;&nbsp;&nbsp;&nbsp;
                <select name="rentArea" id="areas">
                
                </select><br/><br/>
                还车地点&nbsp;&nbsp;&nbsp;&nbsp;
                <select name="returnCity" id="returnLocat">
                
                 </select><br/><br/>
               	<input type="hidden" name="returnArea"/>
                取车时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="rentTime" placeholder=" 时间格式例如:2010-12-01 12:00 (24小时制)"/><br/>
                <span></span><br/>
                还车时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="returnTime" placeholder=" 时间格式例如:2010-12-08 12:00 (24小时制)"/><br/>
                <span></span><br/>
                <button type="submit">搜索</button>
            </form>
        </div>
        </div>


        <div class="image">
            <img src="images/ad1.jpg" alt="广告">
        </div>
        <div class="pattern">
            <h3>合作伙伴</h3>
            <div class="p1">
                <img src="http://pic.ctrip.com/car_isd/site/join_ban.jpg" alt=""/>
            </div>
            <div class="p2">
                <img src="http://pic.ctrip.com/osdcar/site/isd/vendor/avis-70-42.jpg" alt="" class="i1">
                <img src="http://pic.ctrip.com/osdcar/site/isd/vendor/zhizui-70-42.jpg" alt="" class="i2">
                <img src="http://pic.ctrip.com/osdcar/site/isd/vendor/yihai-70-42.jpg" alt="" class="i2">
                <img src="http://pic.ctrip.com/osdcar/site/isd/vendor/guoxin-70-42.jpg" alt="" class="i2">
            </div>
            <div class="p3">
                <dl>
                    <dt><h1>选择我们的理由</h1></dt>
                    <dd>
                        <i></i>
                        <h2>城市覆盖全</h2>
                        <p>百城千店，总能找到更方便交接的门店</p>
                    </dd>
                    <dd>
                        <i></i>
                        <h2>车型任意选</h2>
                        <p>奥拓到奔驰，百余款车型，总有您喜欢的</p>
                    </dd>
                    <dd>
                        <i></i>
                        <h2>平台比价</h2>
                        <p>多家租车公司，低于官网价，品牌价格任您选</p>
                    </dd>
                    <dd>
                        <i></i>
                        <h2>服务有保证</h2>
                        <p>万辆库存，节日高峰用车有保障</p>
                    </dd>
                </dl>
            </div>
        </div>
        <div class="carList">
            <div class="carList_ul">
                <h3>国内租车</h3>
            </div>
            <div class="car">
                <table class="car_info">
                    <tr>
                        <td>
                            <img src="images/cars/FordFiesta.jpg" alt="FordFiesta">
                            <p class="p1">经济型</p>
                            <p class="p2">福特嘉年华</p>
                            <p class="p3">¥<span>107.00</span>起</p>
                        </td>
                        <td>
                            <img src="images/cars/ChevroletAveo.jpg" alt="ChevroletAveo">
                            <p class="p1">经济型</p>
                            <p class="p2">雪佛兰爱唯欧</p>
                            <p class="p3">¥<span>107.00</span>起</p>
                        </td>
                        <td>
                            <img src="images/cars/ChevroletSail.jpg" alt="ChevroletSail">
                            <p class="p1">经济型</p>
                            <p class="p2">雪佛兰新赛欧</p>
                            <p class="p3">¥<span>115.00</span>起</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/cars/CitroenElysee.jpg" alt="CitroenElysee">
                            <p class="p1">经济型</p>
                            <p class="p2">雪铁龙爱丽舍</p>
                            <p class="p3">¥<span>125.00</span>起</p>
                        </td>
                        <td>
                            <img src="images/cars/BuickExcelle.jpg" alt="BuickExcelle">
                            <p class="p1">经济型</p>
                            <p class="p2">别克凯越</p>
                            <p class="p3">¥<span>134.00</span>起</p>
                        </td>
                        <td>
                            <img src="images/cars/ChevroletEpica.jpg" alt="ChevroletEpica">
                            <p class="p1">经济型</p>
                            <p class="p2">雪佛兰景程</p>
                            <p class="p3">¥<span>134.00</span>起</p>
                        </td>
                    </tr>
                </table>
            </div>

        </div>
        
    </div>
    <div id="footer">

    </div>
</body>
</html>