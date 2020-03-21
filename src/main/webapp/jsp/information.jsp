<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[data-toggle="popover"]').popover()
        })
    </script>
    <![endif]-->
    <!-- body {
        background-image: url('img/xue1.jpg');
            background-size: 100%;
            background-repeat:no-repeat;
    } -->
    <style>
        body{
            background-image: url(/img/jiao1.png);
            background-size: 50%;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>


<div align="center" style="width: 450px;background-color: aquamarine;border: 1px;border-color: #000000;float: right;padding-top: 1.875rem;">
    <h2 style=";padding-right: 2.25rem;">老师登录</h2>
    <%--	<div style="align-items: center;">--%>
    <form action="/code" method="post" >
        <div class="input-group" style="padding-bottom: 2.5rem;;padding-right: 2.25rem;">
            <span class="input-group-addon" id="basic-addon1">请输入手机号</span>
            <input type="text" class="form-control" name="phonenumber" maxlength="11" placeholder="phonenumber" aria-describedby="basic-addon1">
        </div>
        <div class="input-group" style="padding-bottom: 2.5rem;padding-right: 2.25rem;">
            <span class="input-group-addon" id="basic-addon2">请输入您的验证码</span>
            <input type="text" class="form-control" name="code" placeholder="code" aria-describedby="basic-addon1">
        </div>

        <div class="btn-group" role="group" style="padding-bottom: 1.1rem;" aria-label="...">
            <button type="submit" style="width: 200px;background-color: #0066FF;" class="btn btn-default">登&nbsp;&nbsp;录</button>
        </div>
    </form>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">爱乐奇用户隐私条款</button>

    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">

            <div class="modal-content">

                <p>您的个人信息安全对我们来说至关重要。一直以来，爱乐奇都致力于为每位用户提供更安全的互联网环境。我们将依据《中华人民共和国网络安全法》、《信息安全技术 个人信息安全规范》（GB/T 35273-2017）以及其他相关法律法规和技术规范收集和使用您的个人信息，以帮助我们向您提供更优质的爱乐奇产品和/或服务。《爱乐奇用户隐私条款》（以下简称“本条款”）是对旧版《用户隐私条款》的升级与修订，以更透明地呈现我们收集和使用您个人信息的情况，以及您享有的对个人信息的控制权。我们承诺会对您的个人信息和其它数据进行严格保密，并严格按照本指引所阐述的内容处理您的个人信息。我们会根据您的同意和其它可处理您个人信息的法律依据收集、使用、存储、共享和转移您的个人信息。
                    本政策涉及的个人信息包括：个人基本信息（包括 个人中文名、英文名、年龄、年级、性别、个人电话号码、电子邮箱）； 个人位置信息；网络身份标识信息（包括 系统账号及密码、IP地址）； 通讯录；；个人常用设备信息（包括 硬件型号、设备MAC地址、操作系统类型、软件列表、唯一设备识别码（如IMEI/android ID/IDFA/OPENUDID/GUID、SIM卡IMSI信息等在内的描述个人常用设备基本情况的信息）。 </p>
            </div>
        </div>
    </div>

    <%--</div>--%>
</div>




<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
