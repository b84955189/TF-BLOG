<%@ page import="utils.R" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<ul class="topbar-right">
    <li class="dropdown dropdown-profile">
        <a href="javascript:void(0)" data-toggle="dropdown">
            <img class="img-avatar img-avatar-48 m-r-10" src="${sessionScope.user.user_head_url}" alt="${sessionScope.user.display_name}" title="${sessionScope.user.display_name}" />
            <span>${sessionScope.user.display_name}<span class="caret"></span></span>
        </a>
        <ul class="dropdown-menu dropdown-menu-right">
            <li> <a href="lyear_pages_profile.html"><i class="mdi mdi-account"></i> 个人信息</a> </li>
            <li> <a href="lyear_pages_edit_pwd.html"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
            <li> <a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
            <li class="divider"></li>
            <li> <a href="${pageContext.request.contextPath}<%=R.GLOBAL_SERVLET_INFO.SYSTEM_SERVLET.SYSTEM_SERVLET_URL_PATTERN%>?<%=R.REQUEST.REQUEST_METHOD%>=<%=R.GLOBAL_SERVLET_INFO.SYSTEM_SERVLET.SYSTEM_SERVLET_METHOD_TO_LOGOUT%>"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
        </ul>
    </li>
    <!--切换主题配色-->
    <li class="dropdown dropdown-skin">
        <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
        <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
            <li class="drop-title"><p>主题</p></li>
            <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
            </li>
            <li class="drop-title"><p>LOGO</p></li>
            <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
            </li>
            <li class="drop-title"><p>头部</p></li>
            <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>
                  </span>
                <span>
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>
                  </span>
                <span>
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>
                  </span>
                <span>
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>
                  </span>
                <span>
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>
                  </span>
                <span>
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
            </li>
            <li class="drop-title"><p>侧边栏</p></li>
            <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                <span>
                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                    <label for="sidebar_bg_8"></label>
                  </span>
            </li>
        </ul>
    </li>
    <!--切换主题配色-->
</ul>
<%-- author:Jason Date: 6/10/2020 7:38 PM--%>