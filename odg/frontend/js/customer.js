

jQuery(document).ready(function($) {

    $(".text-form .click-text").click(function(){
        $(".search-post").toggleClass("achier");
        $(".form-s-overlay").toggleClass("achier");
        $(this).toggleClass("achier");
    });
    $(".form-s-overlay").click(function(){
        $(".search-post").toggleClass("achier");
        $(".text-form .click-text").toggleClass("achier");
        $(this).toggleClass("achier");
    });

    
    jQuery('.home-slides').lightSlider({
        item:1,
        slideMargin:0,
        auto:true,
        pause: 5000,
        speed: 1000,
        pager: false,
        controls: true,
        loop:true,
        easing: 'cubic-bezier(0.4, 0, 1, 1)',
        prevHtml:'<i class="fa fa-angle-left"></i>',
        nextHtml:'<i class="fa fa-angle-right"></i>',
    });

    // function calcRate(r) {
    //      const f = ~~r,//Tương tự Math.floor(r)
    //      id = 'star' + f + (r % f ? 'half' : '')
    //     


    
    // js menu mobile 
    jQuery('.main-navigation-mobile .menu-item-has-children > a').after('<span class="sub-open"></span>');
    jQuery('.main-navigation-mobile .sub-open').click( function () {
        jQuery(this).closest('li').children('.sub-menu').toggle(600);
        jQuery(this).toggleClass('sub-opend');
    });

    
    jQuery('.menu-icon .menu-open').click( function () {
        jQuery('.main-navigation-mobile').toggleClass('show-mn');
    });
     jQuery('.icon-close').click( function () {
        jQuery('.main-navigation-mobile').toggleClass('show-mn');
    });



    $("ul.list-unstyled").on("click", ".init", function() {
        $(this).closest("ul").children('li:not(.init)').toggle();
    });

    
    var allOptions = $("ul.list-unstyled").children('li:not(.init)');
    $("ul.list-unstyled").on("click", "li:not(.init)", function() {
        allOptions.removeClass('selected');
        $(this).addClass('selected');
        $("ul.list-unstyled").children('.init').html($(this).html());
        allOptions.toggle();
    });


    // js list khách sạn
    $(".click-khach-san .click-search").click(function(){
        $(".tim-kiem-khach-san").slideToggle("slow");
        $(".click-khach-san").toggleClass("achier");
        $(".bai-viet-khach-san").toggleClass("achier");
        $(".ket-qua-tim-kiem-khach-san").toggleClass("achier");
    });

    // js list voucher
    $(".click-voucher .click-search").click(function(){
        $(".tim-kiem-voucher").slideToggle("slow");
        $(".click-voucher").toggleClass("achier");
        $(".bai-viet").toggleClass("achier");
        $(".ket-qua-tim-kiem").toggleClass("achier");
    });

    // js câu hỏi thường gặp
    $(".cau-hoi-thuong-gap .panel-heading a").on("click", function(){
        if($(this).hasClass("active")){
            $(this).removeClass("active");
        }
        else{
            $(".cau-hoi-thuong-gap .panel-heading a").removeClass("active");
            $(this).addClass("active"); 
        }
    });

    // $(".info-condition .collapse-section").click(function(){
    //   $(".info-condition .collapse-section").removeClass("active");
    // })
   

    jQuery('.home-slides').lightSlider({
        item:1,
        slideMargin:0,
        auto:true,
        pause: 5000,
        speed: 1000,
        pager: false,
        controls: true,
        loop:true,
        easing: 'cubic-bezier(0.4, 0, 1, 1)',
        prevHtml:'<i class="fa fa-angle-left"></i>',
        nextHtml:'<i class="fa fa-angle-right"></i>',
    });
    $('#hotelGallery').lightSlider({
        gallery:true,
        item:3,
        auto: true,
        pause: 3000,
        loop:true,
        speed:500,
        thumbItem:9,
        slideMargin:5,
        enableDrag: false,
        currentPagerPosition:'left',
        onSliderLoad: function(el) {
            el.lightGallery({
                selector: '#hotelGallery .lslide'
            });
        },
         responsive : [
            {
                breakpoint:500,
                settings: {
                    item:1,
                    slideMove:1,
                  }
            },
        ]
    });
    $(".content-slider-hp").lightSlider({
        item: 1,
        pager: false,
        auto: true,
        pause: 3000,
        slideMargin: 0,
        loop: true,
        slideMove: 1,
    });
    $(".content-slider-ks").lightSlider({
        item: 3,
        pager: false,
        auto: true,
        pause: 3000,
        loop: true,
        slideMargin: 25,
        slideMove: 1,
        responsive : [
            {
                breakpoint:992,
                settings: {
                    item:2,
                    slideMove:1,
                  }
            },
            {
                breakpoint:800,
                settings: {
                    item:1,
                    slideMove:1,
                  }
            },
        ]
    });



 });
