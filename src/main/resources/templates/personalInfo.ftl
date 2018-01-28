<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ozc Journal｜完善个人信息</title>

    <!--Materialize2  CSS-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>


</head>
<body>

<repalce id="main">
    <style>
        /*左侧导航条样式*/
        header, main, footer {
            padding-left: 300px;
        }
        @media only screen and (max-width: 992px) {
            header, main, footer {
                padding-left: 0;
            }
        }
        /*背景图*/
        body {
            background-image: url(${request.contextPath}/imgs/register&loginBG.gif);
            background-repeat: repeat;
        }
    </style>


    <!--表单-->
    <div class="section no-pad-bot" id="index-banner">
        <div class="container">
            <br><br>

            <!--logo-->
            <div class="center-align"><img src="${request.contextPath}/imgs/logo-big.png" alt="">
            </div>
            <!--表单-->
            <div class="row">
                <form class="col s8 offset-s4" id="personalInfoForm" action="${request.contextPath}/user" method="put"
                      enctype="multipart/form-data">
                    <div class="row">
                        <div class="input-field col s6">

                            <img src="${request.contextPath}/imgs/headPortrait.png" id="displayImg" class="left " alt="">
                            <div class="file-field input-field right">
                                <div class="btn pink accent-1" id="fileButton">
                                    <span> 设置头像</span>
                                    <input type="file" name="imgsFile">
                                </div>
                                <input type='hidden' id='headPortrait' name='headPortrait' value=''/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix  pink-text text-accent-1">email</i>
                            <input id="email" name="email" type="email" class="validate" required>
                            <label for="email">邮箱地址</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 ">
                            <button class="btn waves-effect waves-light pink accent-1" type="button" id="submitForm"
                                    name="action">完善个人信息
                                <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <br><br>
        </div>
    </div>

    <!--侧边导航条-->
  <#--  <ul id="slide-out" class="side-nav fixed ">
        <li>
            <div class="userView">
                <img id="slide-out-headPortrait" class="materialboxed" src="${request.contextPath}/imgs/headPortrait.png"/><br>
                <span class="black-text " id="userNickName">张三</span><br>
                <span id="userEmail" class="black-text email">未填邮箱地址</span>
            </div>
        </li>
        <li><a class="waves-effect" href="${request.contextPath}/view/personalInfo" id="personalInfo"><i
                class="material-icons pink-text text-accent-1">perm_identity</i>完善个人信息</a>
        </li>

        <li><a class="waves-effect" href="${request.contextPath}/music.html"><i
                class="material-icons pink-text text-accent-1">insert_chart</i>设置个人音乐</a>
        </li>
        <li>
            <div class="divider"></div>
        </li>
        <li><a class="subheader">用户操作</a></li>

        <li><a class="waves-effect" href="${request.contextPath}/view/index" id="index"><i
                class="material-icons prefix  pink-text text-accent-1">label</i>回到首页</a>
        </li>

        <li><a class="waves-effect" href="${request.contextPath}/editJournal.html"><i class="material-icons prefix pink-text text-accent-1">mode_edit</i>编写新的日志</a>
        </li>

        <li><a class="waves-effect" href="${request.contextPath}/journals"><i
                class="material-icons pink-text text-accent-1">search</i>查看日志</a></li>
        <li id="logout"><a class="waves-effect"><i class="material-icons pink-text text-accent-1">settings_power</i>退出登陆</a>
        </li>
    </ul>-->



    <!--弹出框-->
    <script src="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link href="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.css" rel="stylesheet">

    <!--Materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>

    <!--jquery AJAX提交表单js -->
    <script src="https://cdn.bootcss.com/jquery.form/4.2.2/jquery.form.min.js"></script>

    <!--通用和页面JS-->
    <script src="${request.contextPath}/script/commonScript.js"></script>
    <script src="${request.contextPath}/script/personalInfo.js"></script>

    <!--pjax-->
    <script src="https://cdn.bootcss.com/jquery.pjax/2.0.1/jquery.pjax.min.js"></script>

    <script>
        $(function () {
            personalInfo.init();
        });


        //回到首页
        $(document).pjax("#index", '#main',{fragment:"#main"});
    </script>
</repalce>



</body>
</html>