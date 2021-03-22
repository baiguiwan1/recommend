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
    <link href="/css/signin.css" rel="stylesheet">
    <link href="/dist/css/bootstrap-select.min.css" rel="stylesheet" />

    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/dist/js/bootstrap-select.min.js"></script>
    <script src="/dist/js/i18n/defaults-zh_CN.min.js"></script>

</head>

<body class="text-center">

<#if scholar_info ??>
    <form class="form-signin" action= "/expert/expertRegister" method="post">
        <img class="mb-4" src="./img/login.jpg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">请注册</h1>
        <#if registermsg??>
            <p style="color: crimson">${registermsg}</p>
        </#if>
        <label class="sr-only">用户名</label>
        <input type="text" name="exName" class="form-control" placeholder="用户名" required="required" autofocus="">
        <#if scholar_info ??>
        <#else>
            <label class="sr-only">学者真实姓名</label>
            <input type="text" name="scholar_name" class="form-control" placeholder="学者真实姓名（可选填）"  autofocus="">
        </#if>
        <label class="sr-only">密码</label>
        <input type="password" name="password" class="form-control" placeholder="密码" required="required">
        <label class="sr-only">确认密码</label>
        <input type="password" name="password1" class="form-control" placeholder="确认密码" required="required">
        <#if scholar_info ??>
        <#else>
            <label class="sr-only">机构/学校（可选填）</label>
            <input type="text" name="institution" class="form-control" placeholder="机构/学校（可选填）">
            <label class="sr-only">职称/职位（可选填）</label>
            <input type="text" name="scholar_post" class="form-control" placeholder="职称/职位（可选填）">
        </#if>

        <label class="sr-only">研究领域</label>
        <select class="selectpicker form-control" multiple name="researchFields" title="研究领域,可多选,最多三项" placeholder="研究领域"  data-max-options="3" data-selected-text-format="count > 3">
            <option value="10000">制造业</option>
            <option value="10001">农林牧渔业</option>
            <option value="10002">医药业</option>
            <option value="10003">科学服务业</option>
            <option value="10004">电子信息业</option>
            <option value="10005">社会保障和社会福利业</option>
            <option value="10006">水利环境业</option>
            <option value="10007">教育业</option>
            <option value="10008">新材料能源行业</option>
            <option value="10009">轻功石化业</option>
            <option value="10010">建筑业</option>
        </select>
        <#--    <select class="form-control selectpicker" name="city" data-live-search="true" multiple>-->
        <#--        <optgroup label="广东省" value>-->
        <#--            <option value="1">广州市</option>-->
        <#--            <option value="2">深圳市</option>-->
        <#--            <option value="3">珠海市</option>-->
        <#--        </optgroup>-->
        <#--        <optgroup label="广西">-->
        <#--            <option value="1">南宁市</option>-->
        <#--            <option value="2">柳州</option>-->
        <#--            <option value="3">桂林市</option>-->
        <#--        </optgroup>-->
        <#--        <optgroup label="山东">-->
        <#--            <option value="1">烟台</option>-->
        <#--            <option value="2">青岛</option>-->
        <#--            <option value="3">济南</option>-->
        <#--        </optgroup>-->
        <#--    </select>-->

        <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="javascript:alert('注册成功！')">注册</button>
        <p class="mt-5 mb-3 text-muted">© 2019-2020</p>
    </form>
<#else>
    <form class="form-signin" action= "/expert/register" method="post">
        <img class="mb-4" src="./img/login.jpg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">请注册</h1>
        <#if registermsg??>
            <p style="color: crimson">${registermsg}</p>
        </#if>
        <label class="sr-only">用户名</label>
        <input type="text" name="exName" class="form-control" placeholder="用户名" required="required" autofocus="">
        <#if scholar_info ??>
        <#else>
            <label class="sr-only">学者真实姓名</label>
            <input type="text" name="scholar_name" class="form-control" placeholder="学者真实姓名（可选填）"  autofocus="">
        </#if>
        <label class="sr-only">密码</label>
        <input type="password" name="password" class="form-control" placeholder="密码" required="required">
        <label class="sr-only">确认密码</label>
        <input type="password" name="password1" class="form-control" placeholder="确认密码" required="required">
        <#if scholar_info ??>
        <#else>
            <label class="sr-only">机构/学校（可选填）</label>
            <input type="text" name="institution" class="form-control" placeholder="机构/学校（可选填）">
            <label class="sr-only">职称/职位（可选填）</label>
            <input type="text" name="scholar_post" class="form-control" placeholder="职称/职位（可选填）">
        </#if>

        <label class="sr-only">研究领域</label>
        <select class="selectpicker form-control" multiple name="researchFields" title="研究领域,可多选,最多三项" placeholder="研究领域"  data-max-options="3" data-selected-text-format="count > 3">
            <option value="10000">制造业</option>
            <option value="10001">农林牧渔业</option>
            <option value="10002">医药业</option>
            <option value="10003">科学服务业</option>
            <option value="10004">电子信息业</option>
            <option value="10005">社会保障和社会福利业</option>
            <option value="10006">水利环境业</option>
            <option value="10007">教育业</option>
            <option value="10008">新材料能源行业</option>
            <option value="10009">轻功石化业</option>
            <option value="10010">建筑业</option>
        </select>
        <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="javascript:alert('注册成功！')">注册</button>
        <p class="mt-5 mb-3 text-muted">© 2019-2020</p>
    </form>
</#if>

<script>
    $(function () {
        $('select').selectpicker();
    });
</script>
</body>
</html>