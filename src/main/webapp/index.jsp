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

    <style type="text/css">
        /* 	*{ margin:0px; padding:0px;} */
        #nav{ width:600px; height:40px; margin:0 auto;}
        #nav ul{ list-style:none;}
        #nav ul li{ float:left; line-height:40px; text-align:center; position:relative;}
        #nav ul li a{ text-decoration:none; color:#000; display:block;padding:0px 10px;}
        #nav ul li a:hover{ color:#FFF; background:#333}
        #nav ul li ul{ position:absolute; display:none;}
        #nav ul li ul li{ float:none; line-height:30px; text-align:left;}
        #nav ul li ul li a{ width:100%;}#nav ul li ul li a:hover{ background-color:#06f;}
        #nav ul li:hover ul{ display:block}
        #u{
            float: left;
        }
        #ile{
            padding-left: 1.25rem;
        }
        *{

            margin:0px;

            padding:0px;

            text-align:center;

        }



        #banner{

            width:730px;

            height:454px;

            margin:50px auto;

            position:relative;/*相对定位,相对于.btn按钮*/

            text-align:left;

            padding-top: 100px;

        }

        .pic image {

            display:block;/*默认有图片不显示*/

            position:absolute;/*绝对定位.对应的是.pic这个div*/

            top:0px;

            left:0px;

        }

        .pic a{

            display:none;

        }

        .pic{        /*专门显现图片区*/

            position:relative;/*相对定位.对应.pic img*/

            border:1px solid red;

            padding-bottom: 30px;
        }

        .btn{

            width:150px;

            height:18px;

            position:absolute;/*绝对定位相对于banner div*/

            bottom:5px;

            right:290px;



        }

        .btn ul li{

            background-color:#000000;/*黑色*/

            color:#ffffff;

            list-style-type:none;

            width:18px;

            height:18px;

            float:left;

            border-radius:9px;/*变成圆的*/

            text-align:center;

            line-height:18px;

            cursor:pointer;/*鼠标移动变手指状态*/

            margin-left:5px;

        }

        .btn ul li.one{

            background-color:#ff9966;

        }
        .im{
            width: 500px;
            height: 300px;
        }

    </style>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script>

        $(function(){

            $("#all li").mouseover(function(){//鼠标进入离开事件

                $(this).css("background-color","#ff00ff").siblings().css("background-color","white");

                $(this).css({"background-color":"red","font-size":"9px"}).siblings().hide();

            });



            $(window).scroll(function(){//鼠标滚动事件

                var _top=$(window).scrollTop();//获得鼠标滚动的距离

            });



            //手动播放图片

            $(".btn ul li").hover(function(){



                $(this).addClass("one").siblings().removeClass("one");

                index=$(this).index();

                i=index;

                $(".pic a").eq(index).stop().fadeIn(500).show().siblings().stop().fadeIn(500).hide();

            });



            //自动播放图片

            var i=0;

            var t=setInterval(autoplay,3000);

            function autoplay(){

                i++;

                if(i>5)i=0;

                $(".btn ul li").eq(i).addClass("one").siblings().removeClass("one");

                $(".pic a").eq(i).stop().fadeIn(500).show().siblings().stop().fadeIn(500).hide();

            }



            $("#banner").hover(function(){

                clearInterval(t);

            },function(){

                t=setInterval(autoplay,3000);

            });

        });

    </script>

</head>
<body bgcolor="#faebd7">
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="http://localhost:8080"><span class="glyphicon glyphicon-star">爱乐奇</span></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">课程内容 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="http://www.alo7.com/web/courses/smartEng/">聪明英语  SE</a></li>
                        <li><a href="#">天才英语  GE</a></li>
                        <li><a href="#">睿智英语  WE</a></li>
                        <li><a href="#">爱乐奇新概念 NCC</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">产品方案 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">学生家长学习中心</a></li>
                        <li><a href="#">老师教学中心</a></li>
                        <li><a href="#">校长运营中心</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">服务合作 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">教师培训</a></li>
                        <li><a href="#">幼儿园合作</a></li>
                        <li><a href="#">培训机构合作</a></li>
                    </ul>
                </li>
                <li>
                    <a href="http://localhost:8080/member" >会员中心</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关于爱乐奇 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a  data-toggle="modal" data-target=".bs-example-modal-lg">公司介绍</a></li>
                        <li><a href="#">发展历程</a></li>
                        <li><a href="#">人才招聘</a></li>
                        <li><a href="#">联系我们</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">登录 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/jsp/teacherlogin.jsp">我是老师</a></li>
                        <li><a href="#">我是家长</a></li>
                        <li><a href="#">我是校长</a></li>
                        <li><a href="#">少儿入口</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- Large modal -->

<div id="banner">

    <div class="pic">

        <a href="#" style="display:block"><img class="im" src="img/xue1.jpg"/></a>

        <a href="#"><img class="im" src="img/sikao.jpg"/></a>

        <a href="#"><img class="im" src="img/xue1.jpg"/></a>

        <a href="#"><img class="im" src="img/xue1.jpg"/></a>

        <a href="#"><img class="im" src="./img/ileqi.png"/></a>

    </div>
    <div class="btn">
        <ul>
            <li class="one">1</li>

            <li>2</li>

            <li>3</li>

            <li>4</li>

            <li>5</li>

            <li>6</li>
        </ul>

    </div>
</div>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">

        <div class="modal-content">
            <img id="touxiang" src="img/ileqi.png" />
            <p>国内领先的K12英语教育产品和服务整体解决方案提供商。
                爱乐奇将先进的教育理念与前沿科学技术充分结合，为未来设计教育，为机构/学校提供从教材、平台、测评、运营到视频外教等一站式解决方案，全方位融入学习的每个场景，服务教学的每一个环节。
                目前，全国已有1500多家机构的10000多所学校，超过1500多万师生正在享受爱乐奇英语带来的学习乐趣。包括新东方、昂立、精锐、卓越、大桥、汇佳等多家知名连锁培训机构和全日制学校都在使用爱乐奇的教学产品和服务。</p>
            <p><h1>管理团队</h1>
            2004年，潘鹏凯从MIT毕业后回国创业，一直在探索如何用先进技术帮助我国孩子更好地学习。他利用语音识别技术，研发了SAYBOT
            播放器，但6年前，在线教育市场并没有成熟，业务发展屡屡受挫。而当时任迪士尼英语教学总监的唐威廉恰巧在事业发展过程中也遇到
            瓶颈，在努力地寻求更大的发展空间。2008年，潘博士把儿子送到了迪士尼英语学习口语，遇到了唐老师，两人一见如故，一拍即合，
            发挥各自优势，研发出一套混合立体英语教学产品体系——爱乐奇少儿英语。历经8年研发和改进，如今的爱乐奇少儿英语已经能为培训
            机构提供从教程设计到教学理念，再到美术设计、技术支持，教师培训等一整套智能教学解决方案。这两位少儿英语互动教材的先
            行者用自己的实践诠释了何为科学技术与教育理念的艺术结合。</p>
            <p>潘鹏凯 博士
                爱乐奇创始人及CEO。潘鹏凯先生毕业于浙江大学，师从数字化大师尼古拉斯•尼葛洛庞帝（Nicholas Negroponte）教授，获得美国麻省理工学院（MIT）媒体实验室博士学位。潘鹏凯先生在美国麻省理工学院(MIT)媒体实验室攻读硕士和博士期间，在移动媒体领域取得了开创性成果，曾于国际学术大会和期刊上发表数十篇论文。2003年获得国内教育部颁发的首批“国家自费留学生奖学金”，并获温家宝总理接见。2004年夏天，潘鹏凯博士在哈佛大学和麻省理工学院的支持下，创建了爱乐奇公司（前身是说宝堂公司）。公司致力为国内孩子设计数码英语教材。 潘鹏凯还多次应邀在哈佛大学、斯坦福大学、日内瓦等国际会议上发表有关未来少儿教育的主题演讲。</p>
        </div>
    </div>
</div>


<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
