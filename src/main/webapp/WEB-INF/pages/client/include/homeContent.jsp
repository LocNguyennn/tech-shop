<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="<c:url value='/js/client/homeAjax.js'/>"></script>


<section class="cps-section">
    <div class="std">
        <div class="cps-container">
            <div class="block-sliding-home">
                <div class="block-sliding-home__box-left">
                    <div class="box-list-menu">
                        <ul class="list-menu" id="danhmuc">

                        </ul>
                    </div>
                </div>
                <div class="block-sliding-home__box-center">
                    <div class="swiper-container gallery-top">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="/techshop/store?brand=PC ĐỒNG BỘ VÀ PC GAMING">
                                    <img class="swiper-lazy"
                                         data-src="Frontend/img/slideshow_2.png"
                                         alt="PC GAMING &lt;BR&gt; Ưu đãi cực lớn"/>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="/techshop/store?brand=LAPTOP">
                                    <img class="swiper-lazy"
                                         data-src="Frontend/img/slideshow_3.png"
                                             alt="LAPTOP CHIẾN TẾT &lt;BR&gt; Giảm giá sập sàn "/>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="/techshop/store?name=&range=&manufactor=Apple&brand=LAPTOP">
                                    <img class="swiper-lazy"
                                         data-src="Frontend/img/slideshow_4.JPG"
                                         alt="FAN TÁO MUA NGAY &lt;BR&gt; Giá tốt quà ngon"/>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="/techshop/store?brand=TAI%20NGHE,%20MÁY%20CHIẾU">
                                    <img class="swiper-lazy"
                                         data-src="Frontend/img/slideshow_5.JPG"
                                         alt="TAI NGHE CHẤT LƯỢNG CAO &lt;BR&gt; Giá siêu hấp dẫn"/>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="/techshop/store?brand=THIẾT%20BỊ%20VĂN%20PHÒNG">
                                    <img class="swiper-lazy"
                                         data-src="Frontend/img/slideshow_6.jpg"
                                         alt="MÁY IN ĐA NĂNG &lt;BR&gt; Giá tốt quà ngon"/>
                                </a>
                            </div>
<%--                            <div class="swiper-slide">--%>
<%--                                <a href="">--%>
<%--                                    <img class="swiper-lazy"--%>
<%--                                         data-src=""--%>
<%--                                         alt="MÁY LỌC KHÍ PS5 &lt;BR&gt; Siêu sale giá sốc"/>--%>
<%--                                </a>--%>
<%--                            </div>--%>
                        </div>
                        <div class="swiper-button-next"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>
                        <div class="swiper-button-prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></div>
                    </div>
                    <div class="swiper-container gallery-thumbs">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">PC GAMING <BR> Ưu đãi cực lớn</div>
                            <div class="swiper-slide">LAPTOP CHIẾN TẾT <BR> Giảm giá sập sàn</div>
                            <div class="swiper-slide">FAN TÁO MUA NGAY <BR> Giá tốt quà ngon</div>
                            <div class="swiper-slide">TAI NGHE CHẤT LƯỢNG CAO <BR> Giá siêu hấp dẫn</div>
                            <div class="swiper-slide">MÁY IN ĐA NĂNG <BR> Giá tốt quà ngon</div>
<%--                            <div class="swiper-slide">MÁY LỌC KHÍ PS5 <BR> Siêu sale giá sốc</div>--%>
                        </div>
                    </div>
                </div>
                <div class="block-sliding-home__box-right">
                    <a class="item-banner-right">
                        <img class="cpslazy"
                             data-src="Frontend/img/right-1.jpg"
                             alt=""/>
                    </a>
                    <a
                       class="item-banner-right">
                        <img class="cpslazy"
                             data-src="Frontend/img/right-2.jpg"
                             alt=""/>
                    </a>
                    <a
                       class="item-banner-right">
                        <img class="cpslazy" data-src=""
                             alt="LAPTOP GIÁ RẺ"/>
                    </a>
                </div>
            </div>
        </div>

    </div>
</section>

<div class="clear"></div>
<div class="wrap">
    <div class="content">
        <div class="top-3-grids">
            <div class="section group">
                <div class="grid_1_of_3 images_1_of_3">
                    <a href="/techshop/store?name=&range=&manufactor=Acer&brand=LAPTOP"><img src="Frontend/img/acer.jpg"></a>
                    <h3>Thương hiệu nổi bật </h3>
                </div>
                <div class="grid_1_of_3 images_1_of_3 ">
                    <a href="http://localhost:8080/techshop/store?name=&range=&manufactor=Asus&brand=LAPTOP"><img src="Frontend/img/asus.png" style="background-color: white"></a>
                    <h3>Thương hiệu nổi bật</h3>
                </div>
                <div class="grid_1_of_3 images_1_of_3 ">
                    <a href="http://localhost:8080/techshop/store?name=&range=&manufactor=Dell&brand=LAPTOP"><img src="Frontend/img/dell.png" style="background-color: white"></a>
                    <h3>Thương hiệu nổi bật</h3>
                </div>
            </div>
        </div>

        <div class="content-grids">
            <h4>DANH SÁCH LAPTOP MỚI NHẤT</h4>
        </div>



    </div>

</div>
<div class="clear"></div>
</div>

