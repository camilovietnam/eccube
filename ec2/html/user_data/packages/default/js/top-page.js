$(function(){

    /* smooth scroll */
    $('.inner_link').click(function() {
        const speed = 400;
        const href= $(this).attr("href");
        const target = $(href === "#" || href === "" ? 'html' : href);
        const position = target.offset().top;
        $('body,html').animate({scrollTop:position}, speed, 'swing');
        return false;
    });

    $(".searchIcon a").on("click", function(){
        $("#search, .searchClose").fadeIn(400);
        return false;
    });
    $(".searchClose a").on("click", function(){
        $("#search, .searchClose").fadeOut(300);
        return false;
    });

    $("#menuButton, #spMenu a").click( function(){
        $("#spMenu").fadeToggle(300);
        $("#menuButton").toggleClass("active");
    });

    $('.reccomendSlide.ltr').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 0,
        speed: 9000,
        arrows: false,
        cssEase: 'linear',
        responsive: [{
            breakpoint: 812,
            settings: {
                slidesToShow: 3
            }
        }]
    });

    $('.reccomendSlide.rtl').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 0,
        speed: 9000,
        arrows: false,
        cssEase: 'linear',
        rtl: true,
        responsive: [{
            breakpoint: 812,
            settings: {
                slidesToShow: 3
            }
        }]
    });

    $('#mainVisual .pickup .pickupSlide ul').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        dots: true,
        fade: true,
        autoplay: true,
        speed: 800,
        autoplaySpeed: 4000
    });

    $(".sortTab .kana").on("click", function(){
        $(this).addClass("current");
        $(".sortTab .alphabet").removeClass("current");
        $(".artistListAlphabet, #searchBtnAlphabet").hide();
        $(".artistListKana, #searchBtnKana").fadeIn(400);
        return false;
    });

    $(".sortTab .alphabet").on("click", function(){
        $(this).addClass("current");
        $(".sortTab .kana").removeClass("current");
        $(".artistListKana, #searchBtnKana").hide();
        $(".artistListAlphabet, #searchBtnAlphabet").fadeIn(400);
        return false;
    });


    $(window).scroll(function (){
        $(".anim").each(function(){
            const imgPos = $(this).offset().top;
            const scroll = $(window).scrollTop();

            const windowHeight = $(window).height();
            if (scroll > imgPos - windowHeight + windowHeight/5){
                $(this).addClass("on");
            } else {
                $(this).removeClass("on");
            }
        });
    });
    $(window).scroll();

    $("#op").delay(3500).fadeOut(1000);

    $(document).ready(function () {
        const scrollSpeed = 0.1;
        const wh = $(".reccomendWrap").outerHeight();
        const imgWidth = wh / 3 * 4;
        let posX = 0;

        setInterval(function(){
            if (posX >= imgWidth) posX= 0;
            posX += scrollSpeed;
            $('.reccomendWrap.ltr').css("background-position", posX+"px 0px");
            $('.reccomendWrap.rtl').css("background-position", "-"+posX+"px 0px");
        }, 1);
    });
});