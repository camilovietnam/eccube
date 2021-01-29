$(function(){
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
});