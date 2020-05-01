jQuery(document).ready(function($){


    // back to top
    $(window).scroll(function(){
        if ($(this).scrollTop() > 100) {
            $('.scrollToTop').fadeIn();
        } else {
            $('.scrollToTop').fadeOut();
        }
    });

    //Click event to scroll to top
    $('.scrollToTop').click(function(){
        $('html, body').animate({scrollTop : 0},800);
        return false;
    });

     $(".open-search .icon-search").click(function(){
        $(".open-search .search-header").toggleClass("active");
      });

    // js menu mobile
    jQuery('.main-menu-mobi .menu-item-has-children > a').after('<span class="sub-open"></span>');
    jQuery('.main-menu-mobi .sub-open').click( function () {
        jQuery(this).closest('li').children('.sub-menu').toggle(600);
        jQuery(this).toggleClass('sub-opend');
    });

    // slider modal sản phẩm
    var do_alert = function(){
        jQuery(".modet-list-conter").removeClass("active-modal");
    };
    setTimeout(do_alert, 1000);

    $('.image-slider').lightSlider({
        gallery:true,
        item:1,
        thumbItem:7,
        slideMargin: 0,
        auto:false,
        loop:false,
    });


    // slider banner
    jQuery('.lider-banner').lightSlider({
        item:1,
        slideMargin:0,
        auto:true,
        pause: 4200,
        speed: 1000,
        pager: false,
        controls: true,
        loop:true,
        easing: 'cubic-bezier(0.4, 0, 1, 1)',
        prevHtml:'<i class="fa fa-angle-left"></i>',
        nextHtml:'<i class="fa fa-angle-right"></i>',
    });

     // slider đối tác
    jQuery('.slidedoitac').lightSlider({
        item:6,
        slideMargin:15,
        auto:true,
        pause: 4200,
        speed: 1000,
        pager: false,
        controls: true,
        loop:true,
        easing: 'cubic-bezier(0.4, 0, 1, 1)',
        prevHtml:'<i class="fa fa-angle-left"></i>',
        nextHtml:'<i class="fa fa-angle-right"></i>',
    });

    jQuery('.products-list').lightSlider({
        item:3,
        slideMargin:30,
        auto:true,
        pause: 4200,
        speed: 1000,
        pager: false,
        controls: true,
        loop:true,
        easing: 'cubic-bezier(0.4, 0, 1, 1)',
        prevHtml:'<i class="fa fa-angle-left"></i>',
        nextHtml:'<i class="fa fa-angle-right"></i>',
        responsive : [
            {
                breakpoint:991,
                settings: {
                    item:2,
                    slideMove:1,
                    slideMargin:30,
                  }
            },
            {
                breakpoint:500,
                settings: {
                    item:1,
                    slideMargin:10,
                  }
            }
        ]
    });

    // slider sản phẩm
    $('.product-galleryr').lightSlider({
        gallery:true,
        item:1,
        thumbItem:7,
        slideMargin: 0,
        auto:false,
        loop:false,
    });

    // Ảnh phóng to
    $('.ex1').zoom();

    $(document).on("click", ".product-option-list .color-label", function(){
        if($(this).hasClass("active")){
            $(this).removeClass("active");
        } else {
            $(document).find(".product-option-list .color-label").removeClass("active");
            $(this).addClass("active");
        }
    });

   // menu sticky
    var stickyNavTop = jQuery('.main-menu').offset().top;

        var stickyNav = function(){
        var scrollTop = jQuery(window).scrollTop();

        if (scrollTop > stickyNavTop) {
            jQuery('.main-menu').addClass('hrm-sticky-menu');
        } else {
            jQuery('.main-menu').removeClass('hrm-sticky-menu');
        }
    };

    stickyNav();

    jQuery(window).scroll(function() {
      stickyNav();
    });

   // ngày đặt lịch
   $( "#dat-lich" ).datepicker({
       dateFormat: "dd/mm/yy"
   });
   $( "#ngay-kham" ).datepicker({
       dateFormat: "dd/mm/yy"
   });

   // Menu mobi
    $(".test").on('click', function(){
        $(".menu-mobi").addClass("menu-mobi-click");
    });
    $(".x-cloes .icon-click").on('click', function(){
      $(".menu-mobi").removeClass("menu-mobi-click");
    });
});
