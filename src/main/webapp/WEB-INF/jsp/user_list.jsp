<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>用户帐号管理</title>
    <link type="text/css" href="/css/base.css" rel="stylesheet" />
    <link type="text/css" href="/css/style.css" rel="stylesheet" />
    <script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        function del() {
            //获取所有name为chk的多选框,返回一个多选框数组
            var chks=document.getElementsByName("chk");
            //把选中的多选框的值拼接成字符串
            var str =[];
            var m=0;
            //循环多选框数组
            for (var i = 0; i < chks.length; i++) {
                //如果多选框被选中，则把值累计到str中
                if (chks[i].checked == true) {
                       //将值拼装成字符串
//                    str += chks[i].value + ",";
                    //把值存到data1，最后传一个对象过去
                    var data1={"useID":chks[i].value};
                    str.push(data1);
                }
            }
            //弹出多选框选中的结果
           // alert("您勾选的值是："+str);
            $.ajax({
                type:"post",
                url:"deleteLists",
                //传一个str对象过去
                data:JSON.stringify(str),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success:function(data){
                    alert(data)
                }
            })
                window.location.reload();//当点击del()刷新当前页面.
        }
    </script>
</head>
<body>
<div class="container">
 <div class="layout">
	 <div class="title">
	   <h2>用户帐号管理：</h2>
	 </div>
	 <div class="main">
          <%--<form target="" name=""  class="addresser">--%>
         <div class="addresser">
			<div class="usermanage">
	         <div class="tips">
	         <p>1、权限修改和删除为安全期间不可做批量处理，点击帐号删除后后弹出警示框问知否要删除此帐号。</p>
	         <p>2、查找内容可按 id 用户名和创建日期超找格式为例：（12月14日）。</p>
	         <a href="#" class="tip_close"></a>
	      </div>
                <hr>
			<div class="toolbg toolbgline" style="background-image:none;">
                <div class="input_left">
                    <%--批量删除--%>
                    <input type="submit"  value="删除订单" onclick="del()" tabindex="2"/>
                    <%--条件搜索模块--%>
                        <form action="search" method="post">
                            <select tabindex="3" class="mail_mod" name="idname">
                                <option value="1">编号</option>
                                <option value="2">订单号</option>
                                <option value="3">身份证号</option>
                            </select>
                            <input type="test" class="query_text" name="imvar"/>
                            <input type="submit"  class="btn" value=" 查找 " tabindex="11"/>
                            <a href="search_particular.html">高级搜索</a>
                        </form>
                </div>

                <div class="toolbgline_right">${pagination.pageNo}/${pagination.totalPage} 页&nbsp;
                    <c:if test="${!pagination.firstPage}">
                        <a href="page?pageNo=${pagination.prePage}" id="nextpage" title="" accesskey="n">上一页</a>&nbsp;
                    </c:if>
                    <c:if test="${!pagination.lastPage}">
                        <a href="page?pageNo=${pagination.nextPage}" id="nextpage" title="" accesskey="n">下一页</a>&nbsp;
                    </c:if>
                    <%--onblur="onblus()"--%>
                    <form action="page" method="get">
                        <input type="text" name="pagego" class="input_left_text" id="pages" />
                        <%--<a _mljump_="1" href="example/user/page?pageNo=${pageGo}" id="maillistjump" name="maillistjump" title="跳转到指定一页">跳转</a>--%>
                        <input type="submit" value="跳转"/>
                    </form>
                </div>

            </div>
			<table cellspacing="0" cellpadding="0" style="table-layout:fixed;" class="O2" border="1" bgcolor="#f5f5dc">
                <tbody><tr>
                    <td width="3%" style="padding:1px 0 1px 7px;">
                    </td>
                    <td class="o_title2" style="width:3%;">
                        <a href="#" target="actionFrame">编号</a>
                    </td>
                    <td class="o_title2" style="width:15%">
                        <a href="#" target="actionFrame">订单号</a>
                    </td>
                    <td class="o_title2" style="width:5%;">
                        <a href="#" target="actionFrame">姓名</a>
                    </td>
					<td class="o_title2" style="width:10%">
                        <a href="#" target="actionFrame">身份证号</a>
                    </td>
                    <td class="o_title2" style="width:8%">
                        <a href="#" target="actionFrame">联系电话</a>
                    </td>
                    <td class="o_title2" style="width:10%;">
                        <a href="#" target="actionFrame">票务名</a>
                    </td>
					<td class="o_title2" style="width:6%;">
                        <a href="#" target="actionFrame">票价</a>
                    </td>
                    <td class="o_title2" style="width:4%;">
                        <a href="#" target="actionFrame">数量</a>
                    </td>
                    <td class="o_title2" style="width:7%;">
                        <div><a href="#" target="actionFrame">总价</a></div>
                    </td>
					<td class="o_title2" style="width:10%;">
                        <div><a href="#" target="actionFrame">操作</a></div>
                    </td>
                </tr>
                  <tr class="tint2">
                  <c:forEach var="list" items="${pagination.list}">
                    <td class="t_title2 cbox_td" >
                        <%--<input type="checkbox" title="选中/取消选中" />--%>
                        <input type=checkbox name="chk" value=${list.useID}>
                    </td>
                    <td class="t_title2">
                        ${list.useID}
                    </td>
                    <%--<td class="t_title2">--%>
                       <%--<a href="网站后台/user_details.html"> adminstrator</a>--%>
                    <%--</td>--%>
                    <td class="t_title2">
                        ${list.orderNum}
                    </td>
                    <td class="t_title2">
                        ${list.useName}
                    </td>
					<td class="t_title2">
                        ${list.usePapers}
                    </td>
					<td class="t_title2">
                        ${list.usePhone}
                    </td>
                    <td class="t_title2">
                        ${list.ticketName}
                    </td>
                    <td class="t_title2">
                        ${list.ticketPrice}
                    </td>
                    <td class="t_title2">
                        ${list.ticketNum}
                    </td>
                    <td class="t_title2">
                        ${list.ticketTotal}
                    </td>
					<td class="t_title2" >
                        <a href="UpIdServlet?ID=${list.useID}">
                            修改
                        </a>|<a href="user_details.html">详细信息</a>
                    </td>
                </tr>
                </c:forEach>
           </table>
			</div>			
        <%--</form>--%>
              </div>
	 </div><!--end main-->
 </div> 
</div>
<hr>
<span style="margin-left: 495px">|<a href="javascript:">关于我们</a>|<a href="javascript:">协议条款</a>|<a href="index">进入玉龙雪山首页</a>|</span>
</body>
</html>
