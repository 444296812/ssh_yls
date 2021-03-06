<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>玉龙雪山商务网-三级-景区活动</title>
<link rel="stylesheet" type="text/css" href="../css/css.css"/>
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/room-flash.js"></script>
</head>

<body>
<%request.getAttribute("dataFiles");%>

    <!--top flash begin-->
    <div class="YL-home-spot">
      
    </div>
    <!--top flash end-->
    
    <div class="YL-body">
       
           <div class="YL-w1060">
              
               <!--jokul top begin-->
               <div class="YL-header YL-w-header">
                  
                    <!--logo begin-->
                    <div class="header-logo w-logo"><a href="javascript:"><img src="../images/logo2.png"/></a></div>
                    <!--logo end-->
                    
                    <!--头部内容区域 begin-->
                    <div class="header-top">
                      
                       <div class="service-hotline"><img src="../images/service-hotline.png"/></div>
                       
                       <div class="header-weather"><iframe allowtransparency="true" style="margin-left:-80px" frameborder="0" width="205" height="64" scrolling="no" src="http://tianqi.2345.com/plugin/widget/index.htm?s=2&z=3&t=1&v=2&d=1&bd=0&k=&f=ff0000&q=0&e=0&a=0&c=56651&w=205&h=64&align=left"></iframe></div>
                       
                       <div class="intelligent-system"><a href="javascript:"><img src="../images/intelligent-system.png"/></a></div>
                      
                    </div>
                    <!--头部内容区域 end-->
                    
                    <!--头部导航 begin-->
                    <div class="header-nav">
                      <ul>
                         <li><a href="featurespot.jsp">景点介绍</a></li>
                         <li><a href="travelService.html">旅游服务</a></li>
                         <li><a href="circuit.html">推荐线路</a></li>
                         <li><a href="featurespot.jsp">票务预订</a></li>
                         <li><a href="culturalResources.jsp">资源文化</a></li>
                      </ul>
                    </div>
                    <!--头部导航 end-->
                  
               </div>
               <!--jokul top end-->
               
               <!--center begin-->
               <div class="YL-stage">
                 
                  <!--left begin-->
                  <div class="stageLeft">
                  
                     <!--玉龙雪山商务网-三级-景区活动 begin-->
                     <div class="stage-spot">
                       <%--&lt;%&ndash;景区新闻1.1详情&ndash;%&gt;      <%=request.getAttribute("str")%>--%>

                       <%--<div class="spot-title"><span><a href="javascript:">玉龙景点 ·  <%=request.getAttribute("str")%></a></span></div>--%>
                           <div class="spot-title"><span><a href="javascript:">玉龙景点 ·
                               <c:forEach var="datafiles" items="${dataFiles}">
                                   <%--双重条件去重--%>
                                   <c:if test="${datafiles.columnID==requestScope.get('str') && datafiles.id==requestScope.get('sid')}">
                                       ${datafiles.title}
                                   </c:if>
                               </c:forEach>
                               </a></span></div>
                       
                       <div class="activity-lj">
                           <a href="javascript:"><img src="../images/img-28.jpg"/></a>
                       </div>
                       
                       <div class="travel-text">
                              
                              <span class="travel-title">
                              <c:forEach var="datafiles" items="${dataFiles}">
                                  <%--双重条件去重--%>
                                  <c:if test="${datafiles.columnID==5 && datafiles.id==54}">
                                      ${datafiles.title}
                                  </c:if>
                              </c:forEach>
                              </span>
                              
                              <div class="travel-txt">
                                  <c:forEach var="datafiles" items="${dataFiles}">
                                      <%--双重条件去重--%>
                                      <c:if test="${datafiles.columnID==requestScope.get('str') && datafiles.id==requestScope.get('sid')}">
                                          <span>
                                          <img src="${datafiles.img}"/>
                                          </span>
                                      </c:if>
                                  </c:forEach>

                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;冰川分为大陆冰盖和山岳冰川,其中,山岳冰川又分为大陆型冰川和海洋型冰川。玉龙雪山的冰川属于温带海洋型冰川,因受海洋性季风影响,具有积累消融量大,冰温较高,底部滑动明显,运动较快,对气候变化反应敏感等特点<br/>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;玉龙雪山全山共发育有19条现代冰川,其中,最大的一条冰川——“白水一号”冰川（即冰川公园）位于主峰扇子陡正下方,全长2.9公里。冰川的末端是千姿百态的冰塔林,因阳光折射呈现出蓝绿色,人称“绿雪奇峰”。游客须乘坐索道方能到达冰川公园,欣赏这一奇景。<br/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;末端是千姿百态的冰塔林,因阳光折射呈现出蓝绿色,人称“绿雪奇峰”。游客须乘坐索道方能到达冰川公园,欣赏这一奇景。

                              </div>

                           </div>
                       

                          <div class="activity-page">
                             <div class="activity-list">
                                <ul>
                                   <li><a href="javascript:">上一篇：空</a></li>
                                   <li><a href="javascript:">下一篇：
                                       <c:forEach var="datafiles" items="${dataFiles}">
                                           <%--双重条件去重--%>
                                           <c:if test="${datafiles.columnID==5 && datafiles.id==54}">
                                               ${datafiles.title}
                                           </c:if>
                                       </c:forEach>
                                   </a></li>
                                </ul>
                             </div>
                          </div>     
                       
                     </div>
                     <!--玉龙雪山商务网-景区活动 end-->
                  
                  </div>
                  <!--left end-->
                  
                  <!--right begin-->
                  <div class="stageRight">
                     
                     <div class="stage-ico">
                       
                     <!--链接 begin-->
                     <div class="scenic-ico">
                         <ul>
                            <li><a href="featurespot.jsp"><img src="../images/feature-01.png"/></a><span><a href="twoStage/featureSpot.jsp">玉龙景点</a></span></li>
                            <li><a href="featurespot.jsp"><img src="../images/feature-021.png"/></a><span><a href="threeLevel/featureSpot.jsp">门&nbsp;&nbsp;票</a></span></li>
                            <li><a href="tourismIndex.jsp"><img src="../images/feature-03.png"/></a><span><a href="threeLevel/tourismIndex.jsp">景区交通</a></span></li>
                            <li><a href="travelService.html"><img src="../images/feature-04.png"/></a><span><a href="twoStage/travelService.jsp">客服中心</a></span></li>
                            <li><a href="tourismIndex.jsp"><img src="../images/feature-05.png"/></a><span><a href="threeLevel/tourismIndex.jsp">旅游指数</a></span></li>
                            <li><a href="tourismIndex.jsp"><img src="../images/feature-06.png"/></a><span><a href="threeLevel/tourismIndex.jsp">问卷调查</a></span></li>
                         </ul>
                     </div>
                     <!--链接 end-->
                       
                     </div>
                     
                     <!--图片按钮 begin-->
                     <div class="scenic-btn">
                       <a href="featureSpot"><img src="../images/img-04.png"/></a>
                       <a href="javascript:"><img src="../images/img-05.png"/></a>
                     </div>
                     <!--图片按钮 end-->
                     
                     <!--微信二维码 begin-->
                     <div class="YL-wx-code">
                       <dl>
                          <dt><img src="../images/img-06.jpg"></dt>
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
                         <li><i class="footer-ico"><img src="../images/img-07.jpg"/></i><span>玉龙雪山微信号</span></li>
                         <li><i class="footer-ico"><img src="../images/img-07.jpg"/></i><span>雪山AR导览</span></li>
                      </ul>
                    </div>
                    <!--微信号 end-->
                    
                    <!--电话和分享 begin-->
                    <div class="footer-top">
                      
                       <div class="footer-info">
                        <span class="footer-mobel"><img src="../images/footer-service-hotline.png"/></span>
                        <span class="footer-mk">|<a href="javascript:">关于我们</a>|<a href="javascript:">协议条款</a>|<a href="javascript:">帮助中心</a>|</span>
                       </div>
                       
                       <div class="footer-share">
                         <span class="share-i"><a href="javascript:"><img src="../images/sina.png"/></a><a href="javascript:"><img src="../images/tencent.png"/></a></span>
                         <span class="share-ico"><a href="javascript:"><img src="../images/ico-03.png"/></a><a href="javascript:"><img src="../images/ico-04.png"/></a><a href="javascript:"><img src="../images/ico-05.png"/></a><a href="javascript:"><img src="images/ico-06.png"/></a><a href="javascript:"><img src="../images/ico-07.png"/></a><a href="javascript:"><img src="../images/ico-08.png"/></a></span>
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
