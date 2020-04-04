jQuery(function($){

	var minSize = 5; //最小字体
    var maxSize = 50;//最大字体
    var newOne = 500; //生成雪花间隔
    var flakColor = "#fff"; //雪花颜色
    var flak = $("<div class='xh'></div>").css({position:"absolute","top":"0px"}).html("❉");//定义一个雪花
    var dhight = $(window).height(); //定义视图高度
    var dw =$(window).width(); //定义视图宽度
    setInterval(function(){
    var sizeflak = minSize+Math.random()*maxSize; //产生大小不等的雪花
    var startLeft = Math.random()*dw; //雪花生成是随机的left值
    var startopcity = 0.7+Math.random()*0.3; //随机透明度
    var endpositionTop= dhight-100; //雪花停止top的位置
    var endLeft= Math.random()*dw; //雪花停止的left位置
    var durationfull = 5000+Math.random()*5000; //雪花飘落速度不同
    flak.clone().appendTo($("body")).css({
    "left":startLeft ,
    "opacity":startopcity,
    "font-size":sizeflak,
    "color":flakColor
    }).animate({
    "top":endpositionTop,
    "left":endLeft,
    "apacity":0.1
    },durationfull,function(){
    $(this).remove()
    });
    },newOne);
	
    $.supersized({

        // Functionality
        slide_interval     : 6000,    // Length between transitions
        transition         : 1,    // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
        transition_speed   : 3000,    // Speed of transition
        performance        : 1,    // 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)

        // Size & Position
        min_width          : 0,    // Min width allowed (in pixels)
        min_height         : 0,    // Min height allowed (in pixels)
        vertical_center    : 1,    // Vertically center background
        horizontal_center  : 1,    // Horizontally center background
        fit_always         : 0,    // Image will never exceed browser width or height (Ignores min. dimensions)
        fit_portrait       : 1,    // Portrait images will not exceed browser height
        fit_landscape      : 0,    // Landscape images will not exceed browser width

        // Components
        slide_links        : 'blank',    // Individual links for each slide (Options: false, 'num', 'name', 'blank')
        slides             : [    // Slideshow Images
                                 {image : '/demo/static/img/1.jpg'},
                                 {image : '/demo/static/img/2.jpg'},
                                 {image : '/demo/static/img/3.jpg'}
                             ]

    });

});
