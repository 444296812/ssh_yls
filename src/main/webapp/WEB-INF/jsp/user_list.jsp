﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>用户帐号管理</title>
<link type="text/css" href="网站后台/css/base.css" rel="stylesheet" />
<link type="text/css" href="网站后台/css/style.css" rel="stylesheet" />

</head>
<body>
<%request.getAttribute("listEntities");%>
<div class="container">
 <div class="layout">
	 <div class="title">
	   <h2>用户帐号管理：</h2>
	 </div>
	 <div class="main">
          <form target="" action="" name="" class="addresser">
			<div class="usermanage">	
	         <div class="tips">
	         <p>1、权限修改和删除为安全期间不可做批量处理，点击帐号删除后后弹出警示框问知否要删除此帐号。</p>
	         <p>2、查找内容可按 id 用户名和创建日期超找格式为例：（12月14日）。</p>
	         <a href="#" class="tip_close"></a>
	      </div>
			<div class="toolbg toolbgline" style="background-image:none;">
                <div class="input_left">
                    <input type="button" class="wd1 btn btn_true" value="帐号删除" tabindex="2"/>
                    <select tabindex="3" class="mail_mod">
					       <option value="1">编号</option>
                           <option value="2">用户名</option>
                           <option value="3">姓名</option>
						   <option value="4">联系电话</option>
						   <option value="5">QQ</option>
						   <option value="6">创建日期</option>
                    </select>
                    <input type="test" class="query_text"/>
                    <input type="button" class="btn" value=" 查找 " tabindex="11"/>
					<a href="search_particular.html">高级搜索</a>
                </div>
                <div class="toolbgline_right">1/
                    49 页&nbsp;
                    <a href="#" id="nextpage" accesskey="n">下一页</a>&nbsp;
                    <input type="text" name="" class="input_left_text"/>
                    <a _mljump_="1" href="#" id="maillistjump" name="maillistjump" title="跳转到指定一页">跳转</a>
                </div>
            </div>
			<table cellspacing="0" cellpadding="0" style="table-layout:fixed;" class="O2">
                <tbody><tr>
                    <td width="3%" style="padding:1px 0 1px 7px;">
                       
                    </td>
                    <td class="o_title2" style="width:8%;">
                        <a href="#" target="actionFrame">
                            编号
                        </a>
                    </td>
                    <%--<td class="o_title2" style="width:10%;">--%>
                        <%--<a href="#" target="actionFrame">用户名</a>--%>
                    <%--</td>--%>
					<td class="o_title2" style="width:10%">
                        <a href="#" target="actionFrame">姓名</a>
                    </td>
                    <td class="o_title2" style="width:10%">
                        <a href="#" target="actionFrame">联系电话</a>
                    </td>
                    <%--<td class="o_title2" style="width:10%;">--%>
                        <%--<a href="#" target="actionFrame">联系人qq</a>--%>
                    <%--</td>--%>
					<td class="o_title2" style="width:20%;">
                        <a href="#" target="actionFrame">联系人邮箱</a>
                    </td>
                    <td class="o_title2" style="width:10%;">
                        <div><a href="#" target="actionFrame">创建日期↓</a></div>
                    </td>
					<td class="o_title2" style="width:10%;">
                        <div><a href="#" target="actionFrame">操作</a></div>
                    </td>
                </tr>
                  <tr class="tint2">
                  <c:forEach var="listentitie" items="${listEntities}">
                    <td class="t_title2 cbox_td" >
                        <input type="checkbox" title="选中/取消选中" />
                    </td>
                    <td class="t_title2">
                        ${listentitie.useID}
                    </td>
                    <%--<td class="t_title2">--%>
                       <%--<a href="网站后台/user_details.html"> adminstrator</a>--%>
                    <%--</td>--%>
                    <td class="t_title2">
                        ${listentitie.useName}
                    </td>
					<td class="t_title2">
                            ${listentitie.usePhone}
                    </td>
					<%--<td class="t_title2">--%>
                       <%--623393183--%>
                    <%--</td>--%>
                    <td class="t_title2">
                            ${listentitie.usePhone}@foxmail.com
                    </td>
                    <td class="t_title2">
                        <%=System.currentTimeMillis()%>
                    </td>
					<td class="t_title2" >
                        <a href="UpIdServlet?ID=${listentitie.useID}">
                            修改
                        </a>|<a href="user_details.html">详细信息</a>
                    </td>
                </tr>
                </c:forEach>
				    <%--<tr class="tint1">--%>
                    <%--<td class="t_title1 cbox_td" >--%>
                        <%--<input type="checkbox" title="选中/取消选中" />--%>
                    <%--</td>--%>
                    <%--<td class="t_title1">--%>
                       <%--00001--%>
                    <%--</td>--%>
                    <%--<td class="t_title1">--%>
                       <%--<a href="网站后台/user_details.html"> adminstrator</a>--%>
                    <%--</td>--%>
                    <%--<td class="t_title1">--%>
                       <%--郭砚坤--%>
                    <%--</td>--%>
					<%--<td class="t_title1">--%>
                       <%--13519310484--%>
                    <%--</td>--%>
					<%--<td class="t_title1">--%>
                       <%--623393183--%>
                    <%--</td>--%>
                    <%--<td class="t_title1">--%>
                        <%--fid_tastlosa1010@foxmail.com--%>
                    <%--</td>--%>
                    <%--<td class="t_title1">--%>
                        <%--4月24日--%>
                    <%--</td>--%>
					<%--<td class="t_title1">--%>
                        <%--<a href="网站后台/user_manage.jsp">修改</a>|<a href="网站后台/user_details.html">详细信息</a>--%>
                    <%--</td>--%>
                <%--</tr>--%>
           </table>
			
			
			</div>			
        </form> 
	 </div><!--end main-->
 </div> 
</div>
</body>
</html>
