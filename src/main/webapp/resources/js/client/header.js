$(document).ready(function () {
    ajaxGet2();

    function ajaxGet2() {
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/techshop/api/danh-muc/allForReal",
            success: function (result) {
                $.each(result, function (i, danhmuc) {
                    var content = '<li class="item-menu"><a href="/techshop/store?brand=' + danhmuc.tenDanhMuc + '">' +
                        '<span>' + danhmuc.tenDanhMuc + '</span></a></li>';
                    var content2 = '<li><a  style="padding-right: 100px" href="/techshop/store?brand=' + danhmuc.tenDanhMuc + '">' + danhmuc.tenDanhMuc + '</a></li>'
                    $('#danhmuc').append(content);
                    $('#danhmuc2').append(content2);
                })
            }
        });

    }
})