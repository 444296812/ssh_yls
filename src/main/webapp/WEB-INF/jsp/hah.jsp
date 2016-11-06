<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script>
        function f1() {
            //获取所有name为chk的多选框,返回一个多选框数组
            var chks = document.form.chk;

            //把选中的多选框的值拼接成字符串
            var str = "";

            //循环多选框数组
            for (var i = 0; i < chks.length; i++) {
                //如果多选框被选中，则把值累计到str中
                if (chks[i].checked == true) {
                    str += chks[i].value + ",";
                }
            }

            //弹出多选框选中的结果
            alert("您勾选的值是："+str);
        }
    </script>
</head>
<body>
<form name="form">
    <input type=checkbox name="chk" value=1>
    <input type=checkbox name="chk" value=2>
    <input type=checkbox name="chk" value=3>
    <input type="button" value="测试" onclick="f1()"/>
</form>
</body>
</html>