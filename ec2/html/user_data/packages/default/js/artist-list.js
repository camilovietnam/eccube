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
});