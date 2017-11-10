<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    request.setAttribute("ctx", basePath);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <base href="<%=basePath%>"/>
    <link href="${ctx}/css/nsfw/css.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/css/nsfw/style.css" rel="stylesheet" type="text/css"/>
    <script src="${ctx}/js/jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        //隐藏菜单
        $(document).ready(function () {
            $("dt a").click(function () {
                var cur = $(this);
                cur.parent().next().toggle(700);
                var cur_dl = cur.parent().parent();
                doRemoveCurClass();
                $(cur_dl).addClass("curr");
            });

            $("dd a").each(function () {
                $(this).bind("click", function () {
                    doRemoveCurClass();
                    $(this).addClass("cur");
                });
            });
           
        });

        function doRemoveCurClass() {
            $("dl").each(function () {
                $(this).removeClass("curr");
                $("dd a").each(function () {
                    $(this).removeClass("cur");
                });
            });
        }

        function closeOtherDD(id) {
            $("dd").each(function () {
                if ($(this).attr("id") != id + "dd") {
                    $(this).hide(700);
                }
            });
        }
    </script>
    <!--[if IE 6]>
    <script type="text/javascript" src="${basePath}js/DD_belatedPNG.js"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('b, s, img, span, .prev, .next, a, input,');
    </script>
    <![endif]-->
    <style>
        * {
            scrollbar-face-color: #dee3e7; /*立体滚动条的颜色（包括箭头部分的背景色）*/
            scrollbar-highlight-color: #ffffff; /*滚动条的高亮颜色（左阴影？）*/
            scrollbar-shadow-color: #dee3e7; /*立体滚动条阴影的颜色*/
            scrollbar-3dlight-color: #eceaea; /*立体滚动条亮边的颜色*/
            scrollbar-arrow-color: #006699; /*三角箭头的颜色*/
            scrollbar-track-color: #efefef; /*立体滚动条背景颜色*/
            scrollbar-darkshadow-color: #eceaea; /*滚动条的基色*/
        }
    </style>
</head>

<body>
<div class="xzfw" style="width: 210px;">
    <div class="xzfw_nav" style="width:214px;min-height:500px;">
        <div class="nBox" style="width:214px;">
            <div class="x_top" style="width:214px;"></div>
            <div class="sm">
				<dl class="">
                    <dt><a class="yh" href="https://www.baidu.com/s?wd=java%E5%AD%A6%E4%B9%A0%E8%A7%86%E9%A2%91&rsv_spt=1&rsv_iqid=0xcf1f805f0002fe7f&issp=1&f=8&rsv_bp=1&rsv_idx=2&ie=utf-8&rqlang=cn&tn=78040160_5_pg&ch=1&rsv_enter=1&oq=%25E5%259C%25A8%25E7%25BA%25BF%25E5%25AD%25A6%25E4%25B9%25A0%25E5%2588%2586%25E4%25B8%25BA%25E5%2587%25A0%25E5%25A4%25A7%25E6%25A8%25A1%25E5%259D%2597&rsv_t=a18dTOzXIF%2BEpXgbktmCRO0UaTKPFHJHWB6BSq4saUi%2BsBoSF%2BVEaQ3A7mqar2er6RUTuQ&inputT=64322&rsv_pq=d4e60fdc0003307a&rsv_sug3=198&rsv_sug1=94&rsv_sug7=100&bs=%E5%9C%A8%E7%BA%BF%E5%AD%A6%E4%B9%A0%E5%88%86%E4%B8%BA%E5%87%A0%E5%A4%A7%E6%A8%A1%E5%9D%97" target="mainFrame"><b></b>java学习<s class="down"></s>
                    </a></dt>
                </dl>
                <dl class="">
                    <dt><a class="yh" href="${ctx }xzgl/xzgl_bj.action" target="mainFrame"><b></b>我的笔记<s class="down"></s>
                    </a></dt>
                </dl>

                <dl>
                    <dt><a class="xxfb" href="${ctx }nsfw/info_listUI.action" target="mainFrame"><b></b>**<s
                            class="down"></s> </a></dt>
                </dl>
                <dl class="">
                    <dt><a class="tssl" href="${ctx }nsfw/complain_listUI.action" target="mainFrame"><b></b>**<s
                            class="down"></s> </a></dt>
                </dl>
            </div>
        </div>
    </div>
</div>
</body>
</html>
