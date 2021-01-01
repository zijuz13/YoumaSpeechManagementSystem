<%@ page language="java" contentType="text/html; charset=GB18030"

         pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layuimini-iframe�� v2 - ����Layui�ĺ�̨����ϵͳǰ��ģ��</title>
    <meta name="keywords" content="layuimini,layui,layuiģ��,layui��̨,��̨ģ��,admin,adminģ��,layui mini">
    <meta name="description" content="layuimini����layui��������ǰ�˺�̨�����ܣ����ࡢ���õĺ�̨���ģ�壬�������в�ε�ǰ��˳���,ֻ���ṩһ���ӿھ�ֱ�ӳ�ʼ��������ܣ����踴�Ӳ�����">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="icon" href="images/favicon.ico">
    <link rel="stylesheet" href="lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="css/layuimini.css?v=2.0.4.2" media="all">
    <link rel="stylesheet" href="css/themes/default.css" media="all">
    <link rel="stylesheet" href="lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style id="layuimini-bg-color">
    </style>
</head>
<body class="layui-layout-body layuimini-all">
<div class="layui-layout layui-layout-admin">

    <div class="layui-header header">
        <div class="layui-logo layuimini-logo"></div>

        <div class="layuimini-header-content">
            <a>
                <div class="layuimini-tool"><i title="չ��" class="fa fa-outdent" data-side-fold="1"></i></div>
            </a>

            <!--���Զ�ͷ���˵�-->
            <ul class="layui-nav layui-layout-left layuimini-header-menu layuimini-menu-header-pc layuimini-pc-show">
            </ul>

            <!--�ֻ���ͷ���˵�-->
            <ul class="layui-nav layui-layout-left layuimini-header-menu layuimini-mobile-show">
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="fa fa-list-ul"></i> ѡ��ģ��</a>
                    <dl class="layui-nav-child layuimini-menu-header-mobile">
                    </dl>
                </li>
            </ul>

            <ul class="layui-nav layui-layout-right">

                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;" data-refresh="ˢ��"><i class="fa fa-refresh"></i></a>
                </li>
                <li class="layui-nav-item" lay-unselect>
                    <a href="javascript:;" data-clear="����" class="layuimini-clear"><i class="fa fa-trash-o"></i></a>
                </li>
                <li class="layui-nav-item mobile layui-hide-xs" lay-unselect>
                    <a href="javascript:;" data-check-screen="full"><i class="fa fa-arrows-alt"></i></a>
                </li>
                <li class="layui-nav-item layuimini-setting">
                    <a href="javascript:;">admin</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="javascript:;" layuimini-content-href="page/user-setting.html" data-title="��������" data-icon="fa fa-gears">��������<span class="layui-badge-dot"></span></a>
                        </dd>
                        <dd>
                            <a href="javascript:;" layuimini-content-href="page/user-password.html" data-title="�޸�����" data-icon="fa fa-gears">�޸�����</a>
                        </dd>
                        <dd>
                            <hr>
                        </dd>
                        <dd>
                            <a href="javascript:;" class="login-out">�˳���¼</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item layuimini-select-bgcolor" lay-unselect>
                    <a href="javascript:;" data-bgcolor="��ɫ����"><i class="fa fa-ellipsis-v"></i></a>
                </li>
            </ul>
        </div>
    </div>

    <!--���޼����˵�-->
    <div class="layui-side layui-bg-black layuimini-menu-left">
    </div>

    <!--��ʼ�����ز�-->
    <div class="layuimini-loader">
        <div class="layuimini-loader-inner"></div>
    </div>

    <!--�ֻ������ֲ�-->
    <div class="layuimini-make"></div>

    <!-- �ƶ����� -->
    <div class="layuimini-site-mobile"><i class="layui-icon">�\</i></div>

    <div class="layui-body">

        <div class="layuimini-tab layui-tab-rollTool layui-tab" lay-filter="layuiminiTab" lay-allowclose="true">
            <ul class="layui-tab-title">
                <li class="layui-this" id="layuiminiHomeTabId" lay-id=""></li>
            </ul>
            <div class="layui-tab-control">
                <li class="layuimini-tab-roll-left layui-icon layui-icon-left"></li>
                <li class="layuimini-tab-roll-right layui-icon layui-icon-right"></li>
                <li class="layui-tab-tool layui-icon layui-icon-down">
                    <ul class="layui-nav close-box">
                        <li class="layui-nav-item">
                            <a href="javascript:;"><span class="layui-nav-more"></span></a>
                            <dl class="layui-nav-child">
                                <dd><a href="javascript:;" layuimini-tab-close="current">�� �� �� ǰ</a></dd>
                                <dd><a href="javascript:;" layuimini-tab-close="other">�� �� �� ��</a></dd>
                                <dd><a href="javascript:;" layuimini-tab-close="all">�� �� ȫ ��</a></dd>
                            </dl>
                        </li>
                    </ul>
                </li>
            </div>
            <div class="layui-tab-content">
                <div id="layuiminiHomeTabIframe" class="layui-tab-item layui-show"></div>
            </div>
        </div>

</div>
</div>
<script src="lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="js/lay-config.js?v=2.0.0" charset="utf-8"></script>
<script>
    layui.use(['jquery', 'layer', 'miniAdmin','miniTongji'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            miniAdmin = layui.miniAdmin,
            miniTongji = layui.miniTongji;

        var options = {
            iniUrl: "api/init.json",    // ��ʼ���ӿ�
            clearUrl: "api/clear.json", // ��������ӿ�
            urlHashLocation: true,      // �Ƿ��hash��λ
            bgColorDefault: false,      // ����Ĭ������
            multiModule: true,          // �Ƿ�����ģ��
            menuChildOpen: false,       // �Ƿ�Ĭ��չ���˵�
            loadingTime: 0,             // ��ʼ������ʱ��
            pageAnim: true,             // iframe���ڶ���
            maxTabNum: 20,              // ����tab������
        };
        miniAdmin.render(options);

        // �ٶ�ͳ�ƴ��룬ֻͳ��ָ������
        miniTongji.render({
            specific: true,
            domains: [
                '99php.cn',
                'layuimini.99php.cn',
                'layuimini-onepage.99php.cn',
            ],
        });

        $('.login-out').on("click", function () {
            layer.msg('�˳���¼�ɹ�', function () {
                window.location = 'page/login-3.html';
            });
        });
    });
</script>
</body>
</html>
