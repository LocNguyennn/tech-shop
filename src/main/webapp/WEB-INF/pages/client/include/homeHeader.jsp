<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

    <script type="text/javascript"
            src="https://cdn.cellphones.com.vn/media/js/6d472e74730cfe74220f020fcfafab31.js?v=1637866601"></script>
    <script type="text/javascript"
            src="https://cdn.cellphones.com.vn/media/js/1bf78fa0e72be2ccfa19e44750d817e2.js?v=1637981023"></script>


    <link href="https://cdnjs.cloudflare.com" rel="preconnect" crossorigin>

    <link rel="stylesheet" type="text/css"
          href="Frontend/css/slide.css"
          media="all"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          media="all">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          media="all">

    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link href="Frontend/css/style.css" rel="stylesheet" type="text/css"
          media="all"/>

    <link
            href='https//fonts.googleapis.com/css?family=Londrina+Solid|Coda+Caption:800|Open+Sans'
            rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="Frontend/css/responsiveslides.css">

    <script src="Frontend/js/responsiveslides.min.js"></script>
    <script src="js/client/accounting.js"></script>

    <script
            src="https//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>


</head>

<body>
<a class="ic-facebook_href" target="_blank" href="https://m.me/3647"><img style="width: 50px;"
                                                                          src="Frontend/img/message.png" title="logo"/></a>
<a class="ic-zalo_href" target="_blank" href="https://chat.zalo.me/	"><img style="width: 50px;"
                                                                              src="Frontend/img/Logo.svg" title="logo"/></a>
<div id="top" onclick="toTop()"><a href="#"><img class="img-fluid"
                                                 src="Frontend/img/top.svg" title="logo"/></a></div>
<div class="top-header">
    <div class="wrap">

        <!----start-top-nav---->
        <div class="top-nav">
            <ul>
                <li><a href="<%=request.getContextPath()%>/">Trang ch???</a></li>

                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">C???a h??ng <span
                        class="caret"></span></a>
                    <ul class="dropdown-menu" style="background: #D70018" id="danhmuc2">
                    </ul>
                </li>
                <li><a href="<%=request.getContextPath()%>/shipping">Mi???n
                    ph?? v???n chuy???n</a></li>
                <li><a href="<%=request.getContextPath()%>/guarantee">B???o
                    h??nh t???n n??i</a></li>

                <li><a href="<%=request.getContextPath()%>/contact">Li??n h???</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="clear"></div>
<div class="header2">
    <!----start-Header---->
    <!----start-logo---->
    <div class="logo">
        <a href="<%=request.getContextPath()%>/"><img
                src="Frontend/img/logo5.png" title="logo"/></a>
    </div>
    <!----end-logo---->


    <div class="header-top-nav ">
        <c:if test="${pageContext.request.userPrincipal.name != null}">

            <ul>
                <li>Xin ch??o: ${loggedInUser.hoTen}</li>


                <!-- 	<li><a href="<%=request.getContextPath()%>/checkout"">Thanh to??n</a></li> -->
                <li><a href="<%=request.getContextPath()%>/account">T??i
                    kho???n</a></li>
                <li><a href="<%=request.getContextPath()%>/cart"><span>Gi???
									h??ng&nbsp;&nbsp;: </span></a><span
                        class="glyphicon glyphicon-shopping-cart"></span></li>
                <li><a href="<%=request.getContextPath()%>/logout"> ????ng
                    xu???t</a></li>
            </ul>
        </c:if>

        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <ul>
                <li><a href="<%=request.getContextPath()%>/register">????ng
                    k??</a></li>
                <li><a href="<%=request.getContextPath()%>/login">????ng
                    nh???p</a></li>
                <li><a href="<%=request.getContextPath()%>/cart"> <span>Gi??? h??ng&nbsp;&nbsp;&nbsp;</span></a><span
                        class="glyphicon glyphicon-shopping-cart"></span></li>

            </ul>
        </c:if>
    </div>

    <div class="search-bar">
        <form class="search-box" method="get" action="/techshop/search">
            <input style="font-family: Montserrat, sans-serif;" type="text" placeholder="T??m ki???m nhanh" name="name">
            <button class="btn" type="submit"
                    value="Search"></button>
        </form>
    </div>


    <div class="clear"></div>

</div>


<div id="page_loader"></div>
<div id="simple_loader"></div>


<!----End-top-nav---->
<!----End-Header---->
<script src="<c:url value='/js/client/topUp.js'/>"></script>
<script src="<c:url value='/js/client/header.js'/>"></script>