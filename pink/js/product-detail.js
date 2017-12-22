(()=>{
		window.addEventListener("scroll",()=>{
		var search=$(".search");
		var backindex=$("#backIndex");
		var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
		if(scrollTop>=470){
			search.addClass("fixed");
			backindex.css("display","block");
		}else{
			search.removeClass("fixed");
			backindex.css("display","none")
		}

	})


	//****************************放大镜效果*****************************
	var MSIZE=150;
	var SMIZE=350;
	
	$(".left-up").mousemove(function(e){
		$(".great").show();
		$(".mark").show();
		var top=e.offsetY-MSIZE/2;
		var left=e.offsetX-MSIZE/2;
		if(top<0) top=0;
		else if(top>SMIZE-MSIZE) top=SMIZE-MSIZE;
		if(left<0) left=0;
		else if(left>SMIZE-MSIZE) left=SMIZE-MSIZE;

		$(".mark").css("top",top);
		$(".mark").css("left",left);
		$(".great").css("backgroundPosition",`${-left*16/7}px ${-top*18/8}px`);
//		document.querySelector(".great").style.backgroundPosition=`${-left*16/7}px ${-top*18/8}px`;

	})

	$(".left-up").mouseout(function(){
		$(".great").hide();
		$(".mark").hide();

	})
	//*************************小中大图片的切换********************************
	var pid=location.href.split("=")[1];
//	console.log(pid);
	$.ajax({
		url:"data/product-detail.php",
		type:"post",
		data:{pid:pid},
		success:function(data){
				var obj=data.data;
			 var html="";
				html+=`
					 <p> 
           				 <a href="index.html">首页</a><b> > </b>
           				 <span>美妆用品</span> <b> > </b>
            				<span>${obj.fname}</span>
        			</p>
				`
				$("#title").html(html);
				var html="";
				$.each(data.pic,function(idx,obj){
					html+=`
						<li><img src="${obj.sm}" data-md="${obj.md}" data-lg="${obj.lg}" style="width:50px;height:50px"></li>
					`
				})
				$(".small>ul").html(html);

				var html="";
					html+=`
						<h4 class="title">${obj.subtitle}</h4>
            <div class="intro">
               <div class="sale-price">
                    <p class="price"> <b>价格:</b>¥${obj.price}</p>
                    <p class="promise">
                        <b>服务承诺:</b>
						${obj.promise}
                    </p>
                    <p class="is_sale"> <b>促销活动:</b>${obj.sales}</p>
               </div>
                <p class="weight"> <b>重量:</b>${obj.weight}kg</p>`;
				html+=`
					<div class="spec">
                     <b>选择套装:</b>
                    <ul>
				`

				$.each(data.spec,function(idx,val){
					html+=`
						<li data-idx=${idx}>
						${val.spec}
						</li>
					`	
				})
				html+=`
					 </ul>
                </div>
							<br>
                <div class="count">
                    <b>数量:</b>
                    <button id="reduce" class="isYun">-</button>
                    <input type="text" class="buyCount" value=1 />
                    <button id="add" class="isYun">+</button>
                </div>
                <div class="btn-cart" >
                    <button class="buy">立即购买</button>
                    <button class="cart">加入购物车</button>
                    <button class="shou">收藏</button>
                </div>
        </div>
				`

			$("#right").html(html);
				// 设置第一张小图 中图 大图的样式
				$(".small>ul>li:first").addClass("current");
				$(".img>img").attr("src",data.pic[0].md);
				var url=data.pic[0].lg;
				$(".great").css("backgroundImage",`url(${url})`);
				// 设置鼠标进入时大中小图片的切换；；；
				$(".small>ul").on("mouseover","img",function(e){
						var src=$(this).attr("data-md");
						$(".img>img").attr("src",src);
						var bg=$(this).attr("data-lg");
//						console.log(bg);
						$(".great").css("backgroundImage",`url(${bg})`);
						$(this).parent("li").addClass("current").siblings().removeClass("current");
						//设置和图片对应的spec的样式
						var i=$(".small .current").index();	
						$(`[data-idx=${i}]`).addClass("hover").siblings(".hover").removeClass("hover");


				})
			
					$(`[data-idx=0]`).addClass("hover");
				

				var moved=0,width=63,len=data.pic.length;
				function  check(){
					if(moved>len-6){
						$(".right").attr("disabled",true);
					}else if(moved<=0){
						$(".left").attr("disabled",true);
					}else{
						$(".right").attr("disabled",false);
						$(".left").attr("disabled",false);

						
					}
				}
				check();
				function move(){
					var left=-moved*width;
					$(".small>ul").css("left",left);
					 $(".small>ul").css("transition","all .5s linear");
					check();

				}
				
				// *****************左位移图片*******************
				$(".small").on("click",".left",function(e){
					e.preventDefault();
					moved--;
					move();
					
				})
				

				//********************右移图片********************************
				$(".small").on("click",".right",function(e){
					e.preventDefault();
//					console.log(moved);
					moved++;
					move();					
				})
//					**************************加减号*******************************
		function Readd(className,elem){
			var countElem=elem.siblings(".buyCount");
			var value=countElem.val();
			if(className=="reduce"){
				value--;
				countElem.val(value);
				if(value==0){
					value=1;
				}
			}else if(className=="add"){
				value++;
			}
			countElem.val(value);
		}	
		$("#right").on("click",".isYun",function(){
			var name=$(this).attr("id");
//			console.log(name);
			Readd(name,$(this));
		
		})
//			**********************************
		
		$("#right").on("click",".cart",function(){
			isLogin("pay.html");
//			location.href="pay.html";
		
		})
	
// *************************详情信息****************************
	$(".detail").html(`${data.data.detail_pic}`);
		},
        error:function(){
			alert("网络故障");
		}
	})


		$.ajax({
			url:"data/recom.php",
			type:"get",
			success:function(data){
//				console.log(data);
				var html='';
				$.each(data,function(i,obj){
					html+=`
						<li>
						<img src="${obj.img}">
						<p>${obj.title}</p>
						<span style="color:red">¥:${obj.price}</span>	
						</li>
					`
				})
//						console.log(html);
				   $(".pro-title").html(html);
			},
			error:function(){
				alert("网络故障");
			}
		});

})()