function getTotalTop(elem){
		var sum=0;
		do{
		sum+=elem.offsetTop;//dom 的函数，jquey不能用；；；
		elem=elem.offsetParent;
		}while(elem);
		return sum;
	}
(()=>{
	var firTotalTop=getTotalTop(document.getElementById("qiang")); //楼层一
	var $floorul=document.querySelector("#floorName");  //楼层列表的ul
	window.addEventListener("scroll",function(){
	var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
		if(firTotalTop<=scrollTop+innerHeight/2){
			$floorul.style.display="block";
		}else{
			$floorul.style.display="none";
		}
//		console.log(scrollTop);
		var floors=document.querySelectorAll(".floor");
		var footer=document.querySelector("#footer");
//		console.log(scrollTop);
		if($floorul.style.display=="block"){
			for(var i=0;i<floors.length;i++){
//				console.log(floors[i]);
				var totaTop=getTotalTop(floors[i]);	 //楼层顶部到body的距离，用定义完成的gerToscroll函数
				var start=totaTop-innerHeight/2; //楼层开始
				if(i==floors.length-1){              //楼层结束(下层楼层的开始)
					var end=getTotalTop(document.getElementById("footer"))
				}else{
					var end=getTotalTop(floors[i+1])-innerHeight/2;
				}
				if(scrollTop>=start && scrollTop<end){
					break;

				};
			}
//			console.log(i);
			var item=$floorul.querySelector(".item_on");
			if(item){
				item.className="item";
			}
//			console.log($floorul.querySelector(`li:nth-child(${i+1})`));
			$floorul.querySelector(`li:nth-child(${i+1})`).className=`item item_on`;

		}

	});
    var lis=document.querySelectorAll("#floorName li"); //楼层列表的li 
	for(let j=0;j<lis.length;j++){
		lis[j].addEventListener("click",function(){
			var floorI=document.querySelector(".f"+(j+1));
			var totalTop=getTotalTop(floorI);
			//console.log(totalTop);
//			window.scrollTo(0,totalTop-90);
      $("html,body").stop(true).animate({scrollTop:totalTop-90},500);

		});
	}
	$("#qiang").on("click","img",function(){
//		location.href="product.html";
		location.href="product.html";

	})
	$(".product-intro a").click(function(){
		location.href="product.html";
	})
	$(".buy").click(function(){
		isLogin("pay.html");

	})
	$("product img").click(function(){
		isLogin("pay.html");

	})
	$.ajax({
		url:"data/index.php",
		type:'get',
		success:function(outdata){
			var html="";
			console.log(outdata);
			var data=outdata.each;
		for(var i=0;i<data.length;i++){
				html+=`
					<div class="product">
					<img src="${data[i].pic_pro}" alt="${data[i].pid}">
					<p class="title">${data[i].title} </p>
					<p class="price">￥${data[i].price}</p>
					<a href="#" data-toget=${data[i].pid} class="buy">立即抢购</a>
				</div>	
				`;
			}
			$(".product-intro").html(html);
			var name=outdata.name;
			var html="";
			console.log(name);
			$.each(name,function(inx,value){
				html+=`
					<a href="${value.href}"><img src="${value.img}"></a>	
				`
			})
			$(".name-top").html(html);
				
		},
		error:function(){
			alert("网络故障请检查");
		}
	})
	$(".product-intro").on("click","img",function(){
		var pid=$(this).attr('alt');
		location.href="product-detail.html?pid="+pid;
	})
	$(".product-intro").on("click",".buy",function(e){
		e.preventDefault();
		var pid=$(this).attr("data-toget");
//		console.log(pid);
	$.ajax({
			url:"data/cart_add.php",
			type:"post",
			data:{pid:pid,count:1},
			success:function(data){
				location.href="pay.html";
			},
			error:function(){
				alert("网络故障");
			}
		})
	
		})

		

})();
