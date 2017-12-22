
var timer=null;
var width=1337;
var i=0;
var ul=$("#box-banner");
var points=$(".round>li");
$(".round li:first-child").addClass("on");
var imgs=$("#box-banner>li");
ul.css("width",width*imgs.length);
function move(){
    timer=setTimeout(function(){
        if(i<imgs.length-1 ){
            i++;
            ul.css("left",-width*i);
            if(i<imgs.length-1) {
                $(".round li:nth-child(" +(i+1)+")").addClass("on")
					 .siblings().removeClass("on");
            }else{
                $(".round li:first-child").addClass("on").siblings().removeClass("on");
            }
        }else{
			ul.css("left",0);
            ul.css("transition","");
            setTimeout(function(){
                i=1;
                $(".round li:nth-child("+(i+1)+")").addClass("on")
					 .siblings().removeClass("on");
                ul.css("transition","all .5s linear");
                ul.css("left",-width*i);
            },50)

        } 
		move();
    },2000);
}
move();
$(".box-banner").hover(
	function(){clearTimeout(timer)},
	function(){move()}
	)
$(".round").on("mouseover","li",function(){
	clearTimeout(timer);
    if(!$(this).hasClass("on")){
		var i=$(this).index();  
		ul.css("left",-width*i);
		$(".round li:nth-child("+(i+1)+")").addClass("on")
			.siblings().removeClass("on");
	}

})
$(".le_ri").mouseover(function(){
	clearInterval(timer);
})
$(".le_ri").mouseout(function(){
	move();
})


/*	*/ //点右

		    // 获取圆点的下标值；；
		    // i-1;left =-width*(i-1);
             $("#right").click(function(){
				 console.log($(".on"));
             	 var i=$(".on").index();
				 console.log(i);
				 console.log($(".round li:nth-child("+(i+1)+")"));
				 $(".round li:eq("+(i+1)+")").addClass("on")
			 .siblings().removeClass("on");
             	 ul.css("left",-width*(i+1));
				ul.css("transition","all .5s linear");
				 if(i==3){
					 i=0;
					 $(".round li:nth-child("+(i+1)+")").addClass("on")
						 .siblings().removeClass("on");
					 ul.css("left",-width*(i));
					 ul.css("transition","");
				 }
             });

		// 点左
		// 获取圆点的下标值；；
		// i-2;;left=-width*i-2;
	 $("#left").click(function(){
		 var i=parseInt($(".on").index());
			console.log(i);
			ul.css("transition", "all .5s linear");
			ul.css("left",-width*(i-1));
		 $(".round li:nth-child("+i+")").addClass("on")
			 .siblings().removeClass("on");
		 if(i==0){
			 i=3;
			 console.log(i);
			 $(".round li:nth-child("+(i+1)+")").addClass("on")
				 .siblings().removeClass("on");
			 ul.css("transition","");
			 ul.css("left",-width*i);
		 }
	 })
	 

