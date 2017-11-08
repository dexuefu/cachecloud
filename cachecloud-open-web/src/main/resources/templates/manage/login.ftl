<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <#assign base = request.contextPath />
    <title>CacheCloud系统</title>
    <link rel="stylesheet" type="text/css" href="${base}/css/login.css">
    <script type="text/javascript" src="${base}/bootstrap/jquery/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        function loginIn() {
            var userName = document.getElementById("userName");
            var password = document.getElementById("password");
            var redirectUrl = document.getElementById("redirectUrl").value;
            if(userName.value == ""){
                alert("用户名不能为空!");
                userName.focus();
                return false;
            }
            if(password.value == ""){
                alert("密码不能为空!");
                password.focus();
                return false;
            }
            $.post(
                    '/manage/loginIn.json',
                    {
                        userName: userName.value,
                        password: password.value,
                        isAdmin: false
                    },
                    function(data){
                        var success = data.success;
                        var admin = data.admin;
                        if(success==1){
                            if (redirectUrl != "") {
                                window.location = redirectUrl;
                            } else {
                                if(admin == 1){
                                    window.location = "/manage/total/list.do";
                                }else{
                                    window.location = "/admin/app/list.do";
                                }
                            }
                        }else if(success == 0){
                            alert("用户名或者密码错误，请重新输入!");
                        }else if(success == -1){
                            alert("系统不存在该用户名，请确认该用户申请了cachecloud权限!");
                        }else if(success == -2){
                            alert("您不是超级管理员!");
                        }
                    }
            );
        }
    </script>
</head>
<body>
<div class="img"><img src="${base}/img/bg.png"></div>
<div class="container">
    <div class="logo">
        <img class="logo-pic" src="${base}/img/logo.png">
    </div>
    <div class="info">
        <form method="post" name="login" autocomplete="off">
            <div class="input">
                <span class="info-user">用户名</span><input type="text" id="userName" name="userName" autocomplete="off">
            </div>

            <div class="input">
                <span class="info-user">密码</span><input type="password" id="password" name="password" autocomplete="off">
            </div>

            <input type="hidden" value="${redirectUrl}" id="redirectUrl" name="redirectUrl">

            <div class="input login">
                <input type="button" value="登 录" onclick="loginIn()">
            </div>

        </form>
        <a class="register" href="/user/register">新用户注册</a>
    </div>
</div>
</body>
</html>
