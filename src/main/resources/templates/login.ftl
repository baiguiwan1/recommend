<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>注册</title>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/signin.css" rel="stylesheet">
</head>

<body class="text-center">
<form class="form-signin" action="/expert/login" method="post">
    <img class="mb-4" src="./img/new_logo.png" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal">请登录</h1>
    <#if loginmsg??>
        <p style="color: crimson">${loginmsg}</p>
    </#if>
    <label class="sr-only">用户名</label>
    <input type="text" name="exName" class="form-control" placeholder="用户名" required="" autofocus="">
    <label class="sr-only">密码</label>
    <input type="password" name="password" class="form-control" placeholder="密码" required="">
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> 记住我
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    <p class="mt-5 mb-3 text-muted">© 2019-2020</p>

</form>

</body>

</html>