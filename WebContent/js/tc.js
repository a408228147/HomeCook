/**
 * Created by 我 on 2017/6/19.
 */
$(document).ready(function($){

    $(".btn1").click(function(event){
        $(".hint").css({"display":"block"});
        $(".box").css({"display":"block"});
    });

    $(".hint-in3").click(function(event) {
        $(".hint").css({"display":"none"});
        $(".box").css({"display":"none"});
    });
    $(".hint3").click(function(event) {
        $(this).parent().parent().css({"display":"none"});
        $(".box").css({"display":"none"});
    });
});