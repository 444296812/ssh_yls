<%--<%@ page import="com.tosit.yls.dao.InformationDao" %>--%>
<%--<%@ page import="com.tosit.yls.dao.InformationDao" language="java" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>玉龙雪山商务网-二级景点票务</title>
<link rel="stylesheet" type="text/css" href="../../css/css.css"/>
    <style type="text/css" ></style>
<script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../js/room-flash.js"></script>
    <script type="application/javascript">
//        $(document).ready(function(){
//            //设置隐藏功能，点击加入购物车时，就隐藏，并且将数据加入到数据库
////           $("#cart").click(function(){$("#cart").slideToggle("slow")});
//            $("#cart").click(function(){$("#cart").css("background-color","red")});
//       })
//        function addCart(x){
//
//            //创建xmlHttp对象
//            var xmlHttp = new XMLHttpRequest();
//            //给xmlhttp绑定状态改变事件
//            xmlHttp.onreadystatechange=function(){
//                if(xmlHttp.readyState==4 && xmlHttp.status==200){
//                    var result = xmlHttp.responseText;
//                    //alert(result);
//                }
//            }
//            var src="featureSpot?goods_id="+x;
//            //设置请求路径
//            xmlHttp.open("post",src,true);
//            //发送请求
//            xmlHttp.send();
//
//        }

function addCart(x){
    //当双击购物车按钮就变为红色
    $("#cart"+x).css("background-color","red")


    //创建xmlHttp对象
    var xmlHttp = new XMLHttpRequest();
    //给xmlhttp绑定状态改变事件
    xmlHttp.onreadystatechange=function(){
        if(xmlHttp.readyState==4 && xmlHttp.status==200){
            var result = xmlHttp.responseText;
            //alert(result);
        }
    }
    var src="addCart?goods_id="+x;
    //设置请求路径
    xmlHttp.open("post",src,true);
    //发送请求
    xmlHttp.send();
}
    </script>
</head>

<body>
<%--<% request.getAttribute("dataFiles");%>--%>
<%--<% request.getAttribute("ordersList");%>--%>
    <!--top flash begin-->
    <div class="YL-home-spot">
      
    </div>
    <!--top flash end-->
    
    <div class="YL-body">
       
           <div class="YL-w1060">
               <!--jokul top begin-->
               <div class="YL-header YL-w-header">
                    <!--logo begin-->
                    <div class="header-logo w-logo"><a href="javascript:"><img src="../../images/logo2.png"/></a></div>
                    <!--logo end-->
                    
                    <!--头部内容区域 begin-->
                    <div class="header-top">
                      
                       <div class="service-hotline"><img src="../../images/service-hotline.png"/></div>
                       
                       <div class="header-weather"><iframe allowtransparency="true" style="margin-left:-80px" frameborder="0" width="205" height="64" scrolling="no" src="http://tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=2&d=1&bd=0&k=&f=ff0000&q=0&e=0&a=0&c=56651&w=205&h=64&align=left"></iframe></div>
                       
                       <div class="intelligent-system"><a href="javascript:"><img src="../../images/intelligent-system.png"/></a></div>
                      
                    </div>
                    <!--头部内容区域 end-->
                    
                    <!--头部导航 begin-->
                    <div class="header-nav">
                      <ul>
                         <li><a href="attractions">景点介绍</a></li>
                         <li><a href="travelService.html">旅游服务</a></li>
                         <li><a href="circuit.html">推荐线路</a></li>
                         <li><a href="featureSpot.jsp">票务预订</a></li>
                         <li><a href="culturalResources.html">资源文化</a></li>

                             <%--<li><a href="twoStage/featurespot.jsp">景点介绍</a></li>--%>

                             <%--<li>--%>
                                 <%--<c:forEach var="datafiles" items="${dataFiles}">--%>
                                     <%--&lt;%&ndash;双重条件去重&ndash;%&gt;--%>
                                     <%--<c:if test="${datafiles.columnID==1 && datafiles.id==19}">--%>
                                         <%--<a href="attractions?attractions_id=${datafiles.id}">--%>
                                                 <%--${datafiles.conlumnName}--%>
                                         <%--</a>--%>
                                     <%--</c:if>--%>
                                 <%--</c:forEach>--%>
                             <%--</li>--%>

                             <%--&lt;%&ndash;<li><a href="twoStage/featurespot.jsp">旅游服务</a></li>&ndash;%&gt;--%>
                             <%--<li><a href="travelService">--%>
                                 <%--<c:forEach var="datafiles" items="${dataFiles}">--%>
                                     <%--&lt;%&ndash;双重条件去重&ndash;%&gt;--%>
                                     <%--<c:if test="${datafiles.columnID==2 && datafiles.id==35}">--%>
                                         <%--${datafiles.conlumnName}--%>
                                     <%--</c:if>--%>
                                 <%--</c:forEach>--%>
                             <%--</a></li>--%>

                             <%--&lt;%&ndash;<li><a href="twoStage/featurespot.jsp">线路推荐</a></li>&ndash;%&gt;--%>
                             <%--<li><a href="circuit">--%>
                                 <%--<c:forEach var="datafiles" items="${dataFiles}">--%>
                                     <%--&lt;%&ndash;双重条件去重&ndash;%&gt;--%>
                                     <%--<c:if test="${datafiles.columnID==3 && datafiles.id==36}">--%>
                                         <%--${datafiles.conlumnName}--%>
                                     <%--</c:if>--%>
                                 <%--</c:forEach>--%>
                             <%--</a></li>--%>
                             <%--&lt;%&ndash;<li><a href="../threeLevel/culturalResources.jsp">票务预订</a></li>&ndash;%&gt;--%>
                             <%--<li>--%>
                                 <%--<c:forEach var="datafiles" items="${dataFiles}">--%>
                                     <%--&lt;%&ndash;双重条件去重&ndash;%&gt;--%>
                                     <%--<c:if test="${datafiles.columnID==4 && datafiles.id==42}">--%>
                                         <%--<a href="threeFeaturespot?feature_id=${datafiles.id}&str_id=${datafiles.columnID}">--%>
                                                 <%--${datafiles.conlumnName}--%>
                                         <%--</a>--%>
                                     <%--</c:if>--%>
                                 <%--</c:forEach>--%>
                             <%--</li>--%>
                             <%--&lt;%&ndash;<li><a href="../threeLevel/culturalResources.jsp">资源文化</a></li>&ndash;%&gt;--%>
                             <%--<li>--%>
                                 <%--<c:forEach var="datafiles" items="${dataFiles}">--%>
                                     <%--&lt;%&ndash;双重条件去重&ndash;%&gt;--%>
                                     <%--<c:if test="${datafiles.columnID==5 && datafiles.id==39}">--%>
                                         <%--<a href="culturalResources?cultural_id=${datafiles.id}&str_id=${datafiles.columnID}">--%>
                                                 <%--${datafiles.conlumnName}--%>
                                         <%--</a>--%>
                                     <%--</c:if>--%>
                                 <%--</c:forEach>--%>
                             <%--</li>--%>
                      </ul>
                    </div>
                    <!--头部导航 end-->
                  
               </div>
               <!--jokul top end-->
               
               <!--center begin-->
               <div class="YL-stage">
                 
                  <!--left begin-->
                  <div class="stageLeft">
                  
                     <!--玉龙雪山商务网-三级-景点+票务 begin-->
                     <div class="stage-spot">
                       
                       <div class="feature-title"><span><a href="javascript:">填写并核对订单信息</a></span></div> 
                       
                       
                       <div class="feature-list">
                         <ul>
                           <%--<li>--%>
                               <%--<a href="javascript:" class="feature-img">--%>
                                   <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                       <%--<c:if test="${datafiles.goodsID==1}">--%>
                                           <%--<img src="${datafiles.goodsSrc}"/>--%>
                                       <%--</c:if>--%>
                                   <%--</c:forEach>--%>
                                   <%--</a>--%>
                               <%--<div class="feature-div">--%>
                                  <%--<h2 class="feature-t"><a href="javascript:">--%>
                                      <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                      <%--<c:if test="${datafiles.goodsID==1}">--%>
                                            <%--${datafiles.goodsName}--%>
                                      <%--</c:if>--%>
                                      <%--</c:forEach>--%>
                                  <%--</a></h2>--%>
                                  <%--<span>--%>
                                      <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                      <%--<c:if test="${datafiles.goodsID==1}">--%>
                                          <%--${datafiles.goodsMain}--%>
                                      <%--</c:if>--%>
                                      <%--</c:forEach>--%>
                                  <%--</span>--%>
                               <%--</div>--%>
                               <%--<div class="feature-btn">--%>
                                 <%--<span>--%>
                                     <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                     <%--<c:if test="${datafiles.goodsID==1}">--%>
                                         <%--${datafiles.goodsPrice}--%>
                                     <%--</c:if>--%>
                                     <%--</c:forEach>--%>
                                 <%--</span>--%>
                                 <%--&lt;%&ndash;<c:forEach var="datafiles" items="${dataFiles}">&ndash;%&gt;--%>
                                     <%--&lt;%&ndash;<a href="onload?goods_id=${datafiles.goodsID}" class="feature-r" id="cart">加入<br/>购物车</a>&ndash;%&gt;--%>
                                 <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                                 <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                 <%--<a href="#" class="feature-r" id="cart" onclick="addCart(${datafiles.goodsID})">加入<br/>购物车</a>--%>
                                 <%--&lt;%&ndash;<a href="cartOrders" class="feature-l">立即<br/>购买</a>&ndash;%&gt;--%>
                                 <%--&lt;%&ndash;<c:forEach var="datafiles" items="${dataFiles}">&ndash;%&gt;--%>
                                 <%--<a href="ShoppingInformationServletGo?goods_name=${datafiles.goodsName}&goods_price=${datafiles.goodsPrice}" class="feature-l">立即<br/>购买</a>--%>
                                 <%--</c:forEach>--%>
                               <%--</div>--%>
                           <%--</li>--%>


                               <c:forEach var="datafiles" items="${ordersList}">
                             <li>
                                 <a href="javascript:" class="feature-img">
                                             <img src="${datafiles.goodsSrc}"/>
                                 </a>

                                 <div class="feature-div">
                                     <h2 class="feature-t"><a href="javascript:">
                                                 ${datafiles.goodsName}
                                     </a></h2>
                                  <span>
                                          ${datafiles.goodsMain}
                                  </span>
                                 </div>
                                 <div class="feature-btn">
                                 <span>
                                             ${datafiles.goodsPrice}
                                 </span>
                                         <%--<a href="#" class="feature-r" id="cart" onclick="addCart(${datafiles.goodsID})">加入<br/>购物车</a>--%>
                                        <%--每次生成唯一一个id--%>
                                     <a href="#" class="feature-r" id="cart${datafiles.goodsID}" onclick="addCart(${datafiles.goodsID})">加入<br/>购物车</a>
                                         <%--<a href="ShoppingInformationServletGo?goods_name=${datafiles.goodsName}&goods_price=${datafiles.goodsPrice}" class="feature-l">立即<br/>购买</a>--%>
                                     <a href="ShoppingInformationServletGo?goods_name=${datafiles.goodsName}&goods_price=${datafiles.goodsPrice}" class="feature-l">立即<br/>购买</a>
                                 </div>
                             </li>
                               </c:forEach>

                         </ul>
                       </div>
                       <div class="feature-b"> <a href="cart">购物车购买</a></div>
                     </div>
                     <!--玉龙雪山商务网-三级-景点+票务 end-->
                  
                  </div>
                  <!--left end-->
                  
                  <!--right begin-->
                  <div class="stageRight">
                     
                     <div class="stage-ico">
                       
                     <!--链接 begin-->
                     <div class="scenic-ico">
                         <ul>
                            <li><a href="featureSpot.jsp"><img src="../../images/feature-01.png"/></a><span><a href="twoStage/featureSpot.html">玉龙景点</a></span></li>
                            <li><a href="featureSpot.jsp"><img src="../../images/feature-021.png"/></a><span><a href="threeLevel/featureSpot.html">门&nbsp;&nbsp;票</a></span></li>
                            <li><a href="tourismIndex.html"><img src="../../images/feature-03.png"/></a><span><a href="threeLevel/tourismIndex.html">景区交通</a></span></li>
                            <li><a href="travelService.html"><img src="../../images/feature-04.png"/></a><span><a href="twoStage/travelService.html">客服中心</a></span></li>
                            <li><a href="tourismIndex.html"><img src="../../images/feature-05.png"/></a><span><a href="threeLevel/tourismIndex.html">旅游指数</a></span></li>
                            <li><a href="tourismIndex.html"><img src="../../images/feature-06.png"/></a><span><a href="threeLevel/tourismIndex.html">问卷调查</a></span></li>
                         </ul>
                     </div>
                     <!--链接 end-->
                       
                     </div>
                     
                     <!--图片按钮 begin-->
                     <div class="scenic-btn">
                       <a href="featureSpot"><img src="../../images/img-04.png"/></a>
                       <a href="javascript:"><img src="../../images/img-05.png"/></a>
                     </div>
                     <!--图片按钮 end-->
                     
                     <!--微信二维码 begin-->
                     <div class="YL-wx-code">
                       <dl>
                          <dt><img src="../../images/img-06.jpg"></dt>
                          <dd>
                             <span>微信扫一扫</span>
                             <div>关注玉龙雪山微信<br/><font class="font">愉悦旅途&nbsp;&nbsp;&nbsp;从这里开始</font></div>
                          </dd>
                       </dl>
                     </div>
                     <!--微信二维码 end-->                     
                     
                  </div>
                  <!--right end-->
                 
               </div>
               <!--center end-->
              
           </div>
           
           <!--footer begin-->
           <div class="YL-footer">
             
              <div class="YL-width">
              
                 <div class="footer-w">
                    
                    <!--微信号 begin-->
                    <div class="footer-wx">
                      <ul>
                         <li><i class="footer-ico"><img src="../../images/img-07.jpg"/></i><span>玉龙雪山微信号</span></li>
                         <li><i class="footer-ico"><img src="../../images/img-07.jpg"/></i><span>雪山AR导览</span></li>
                      </ul>
                    </div>
                    <!--微信号 end-->
                    
                    <!--电话和分享 begin-->
                    <div class="footer-top">
                      
                       <div class="footer-info">
                        <span class="footer-mobel"><img src="../../images/footer-service-hotline.png"/></span>
                        <span class="footer-mk">|<a href="javascript:">关于我们</a>|<a href="javascript:">协议条款</a>|<a href="javascript:">帮助中心</a>|</span>
                       </div>
                       
                       <div class="footer-share">
                         <span class="share-i"><a href="javascript:"><img src="../../images/sina.png"/></a><a href="javascript:"><img src="../../images/tencent.png"/></a></span>
                         <span class="share-ico"><a href="javascript:"><img src="../../images/ico-03.png"/></a><a href="javascript:"><img src="../../images/ico-04.png"/></a><a href="javascript:"><img src="../../images/ico-05.png"/></a><a href="javascript:"><img src="images/ico-06.png"/></a><a href="javascript:"><img src="../../images/ico-07.png"/></a><a href="javascript:"><img src="../../images/ico-08.png"/></a></span>
                       </div>
                      
                    </div>
                    <!--电话和分享 end-->
                    
                    <div class="footer-txt">
                      <ul>
                        <li>版权所有：云南丽江玉龙雪山旅游开发区管委会     滇ICP备09010050-5号</li>
                        <li>联系地址：云南省丽江市古城区福慧路玉龙雪山旅游大厦</li>
                      </ul>
                    </div>
                    
                 </div>
              
              </div>
             
           </div>
           <!--footer end-->
       
    </div>
<script type="text/jscript" src="js/mouse.js"></script>
</body>
</html>
