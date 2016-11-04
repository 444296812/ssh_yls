<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>玉龙雪山商务网-二级购物车</title>
<link rel="stylesheet" type="text/css" href="../../css/css.css"/>
<script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../js/room-flash.js"></script>
<script type="text/javascript">
            function del(id){
                var xmlHTML=new XMLHttpRequest();
                //添加绑定
                xmlHTML.onreadystatechange=function(){
                    if(xmlHTML.readyState==4&&xmlHTML.status==200){
                        var re=xmlHTML.responseText;
//                        alert("你已删除了此记录");
                    }
                }
                var url="deleteOrders?goods_id="+id;
                xmlHTML.open("post",url,true);
                xmlHTML.send();
            }

            function add_num(num){
                var xmlHTML=new XMLHttpRequest();
                //添加绑定
                xmlHTML.onreadystatechange=function(){
                    if(xmlHTML.readyState==4&&xmlHTML.status==200){
                        var resu=xmlHTML.responseText;
                        //alert(result);
                    }
                }
                var url="updateAdd?add_id="+num;
                xmlHTML.open("post",url,true);
                xmlHTML.send();
            }

            function reduce_num(reduce){
               // alert(reduce);
                var xmlHTML=new XMLHttpRequest();
                //添加绑定
                xmlHTML.onreadystatechange=function(){
                    if(xmlHTML.readyState==4 && xmlHTML.status==200){
                        var result=xmlHTML.responseText;
                        //alert(result);
                    }
                }
                var url="updateReduce?reduce_id="+reduce;
                xmlHTML.open("post",url,true);
                xmlHTML.send();
            }
</script>
</head>
<body>
<%--<% request.getAttribute("ordersList");%>--%>
<%--<% request.getAttribute("dataFiles");%>--%>
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
                         <li><a href="featureSpot.jsp">景点介绍</a></li>
                         <li><a href="travelService.html">旅游服务</a></li>
                         <li><a href="circuit.html">推荐线路</a></li>
                         <li><a href="featureSpot.jsp">票务预订</a></li>
                         <li><a href="culturalResources.html">资源文化</a></li>

                             <%--&lt;%&ndash;<li><a href="twoStage/featurespot.jsp">景点介绍</a></li>&ndash;%&gt;--%>

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
                       
                       <div class="spot-title"><span><a href="javascript:">填写并核对订单信息</a></span></div> 
                       
                       <div class="shopping">
                         
                         <div class="shopping-thead">
                         <table width="100%" cellpadding="0" cellspacing="0" border="0">
                             <tr  align="center" >
                               <td width="10%"height="25"><input type="checkbox"/>全选</td>
                               <td width="30%">票&nbsp;&nbsp;务</td>
                               <td width="15%">票价</td><%--<td width="15%">优惠</td>--%>
                               <td width="15%">数量</td>
                               <td width="15%">操作</td>
                             </tr>
                           </table>
                         </div>
  
                         <div class="shopping-list">
                           <table width="100%" cellpadding="0" cellspacing="0" border="0">
                             <%--<tr  align="center" >--%>
                               <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                 <%--<td width="10%"height="25"><input type="checkbox"/></td>--%>
                               <%--</c:forEach>--%>
                                 <%--&lt;%&ndash;<td width="30%">大玉龙雪山景区联票 </td>&ndash;%&gt;--%>
                                 <%--<td width="30%">--%>
                                     <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                         <%--&lt;%&ndash;双重条件去重&ndash;%&gt;--%>
                                         <%--<c:if test="${datafiles.ticketId==1}">--%>
                                             <%--${datafiles.ticketName}--%>
                                         <%--</c:if>--%>
                                     <%--</c:forEach>--%>
                                 <%--</td>--%>
                               <%--&lt;%&ndash;<td width="15%">￥315.00</td>&ndash;%&gt;--%>
                                 <%--<td width="15%">--%>
                                     <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                     <%--&lt;%&ndash;双重条件去重&ndash;%&gt;--%>
                                     <%--<c:if test="${datafiles.ticketId==1}">--%>
                                        <%--${datafiles.ticketPrice}--%>
                                     <%--</c:if>--%>
                                 <%--</c:forEach>--%>
                                 <%--</td>--%>
                               <%--<td width="15%"></td>--%>
                               <%--&lt;%&ndash;<td width="15%"><span>-</span><input type="text" class="shopp-l"/><span>+</span></td>&ndash;%&gt;--%>
                                 <%--<td width="15%">--%>
                                     <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                         <%--&lt;%&ndash;双重条件去重&ndash;%&gt;--%>
                                         <%--<c:if test="${datafiles.ticketId==1}">--%>
                                             <%--<span><a href="cart" onclick="reduce_num(${datafiles.ticketNum})">-</a></span><input type="text"class="shopp-l" value="${datafiles.ticketNum}"/><span><a href="cart" onclick="add_num(${datafiles.ticketNum})">+</a></span>--%>
                                 <%--&lt;%&ndash;点击删除是传递一个id到ajax&ndash;%&gt;--%>
                                         <%--</c:if>--%>
                                     <%--</c:forEach></td>--%>
                                    <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                     <%--<td width="15%"><a href="cart" onclick="del(${datafiles.ticketId})">删除</a></td>--%>
                                    <%--</c:forEach>--%>
                             <%--</tr>--%>

                                 <c:forEach var="datafiles" items="${ordersList}">
                                 <tr  align="center" >
                                         <td width="10%"height="25"><input type="checkbox"/></td>
                                     <%--<td width="30%">大玉龙雪山景区联票 </td>--%>
                                     <td width="30%">
                                         &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;${datafiles.ticketName}
                                     </td>
                                     <td width="15%">
                                         &nbsp;   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${datafiles.ticketPrice}
                                     </td>
                                     <td width="15%"></td>
                                     <%--<td width="15%"><span>-</span><input type="text" class="shopp-l"/><span>+</span></td>--%>
                                     <td width="15%">
                                                 <span><a href="cart" onclick="reduce_num(${datafiles.ticketId})">-</a></span><input type="text"class="shopp-l" value="${datafiles.ticketNum}"/><span><a href="cart" onclick="add_num(${datafiles.ticketId})">+</a></span>
                                                 <%--点击删除是传递一个id到ajax--%>
                                        </td>
                                         <td width="15%"><a href="cart" onclick="del(${datafiles.ticketId})">删除</a></td>
                                 </tr>
                                 </c:forEach>





                             <%--<tr  align="center" >--%>
                               <%--<td width="10%"height="25"><input type="checkbox"/></td>--%>
                               <%--<td width="30%">大玉龙雪山景区联票 </td>--%>
                               <%--<td width="15%">￥315.00</td>--%>
                               <%--<td width="15%"></td>--%>
                               <%--<td width="15%"><span>-</span><input type="text" class="shopp-l"/><span>+</span></td>--%>
                               <%--<td width="15%"><a href="javascript:">删除</a></td>--%>
                             <%--</tr>--%>
                           </table>
                         </div>
                         
                         <div class="shopping-btn">
                          <a href="order">确认订单</a>
                             <%--<span>应付总额： <font>￥575.00</font></span>--%>
                             <span>应付总额： <font>
                                 <%--<c:forEach var="datafiles" items="${ordersList}">--%>
                                         <%--${datafiles.ticketTotal}--%>
                                 <%--</c:forEach>--%>
                                 ${total}
                             </font></span>
                         </div>
                         
                       </div>
                               
                       
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
