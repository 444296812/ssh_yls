<%@ page import="java.util.UUID" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
恭喜你已成功购票，请牢记你的订单号
<%
    UUID uuid = UUID.randomUUID();
    out.print(uuid);
%>
</body>
</html>