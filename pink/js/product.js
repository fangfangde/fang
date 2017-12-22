/**
 * Created by web-01 on 2016/11/4.
 */
window.addEventListener("scroll",()=>{
		var search=$(".cart-drop");
		var backindex=$("#backIndex");
		var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
		if(scrollTop>=470){
			search.css("display","block");
			backindex.css("display","block");
			$(".search .cart").css("margin-right",300);
		}else{
			search.css("display","none");
			backindex.css("display","none");
		}

})



function pageLoad(pno){
    var kw=location.search.split("=")[1]||" ";
    $.ajax({
        url:"data/product.php",
        type:"post",
        data:{kw:kw,pno:pno},
        success:function(data){
            console.log(data);
			
            var html="";
            $.each(data.data,function(idx,obj){
                console.log(obj.pic_pro);
                //加载产品信息；；
                html+=`
                    <div class="product" id=${obj.pid}>
                <img src="${obj.pic_pro}" data-target="${obj.pid}"/>
                <p class="price">¥${obj.price}</p>
                <p class="title">${obj.subtitle}</p>
                <div>
                   <button class="reduce">-</button>
                    <input type="text" value="1"/>
                    <button class="add">+</button>
                    <a href="${obj.pid}" class="cart">加入购物车</a>
                </div>
            </div>
                `;
            })
            $("#product-list").html(html);
            //点击图片跳转页面；；
            $("#product-list").on("click","img",function(e){
                console.log(e.target);
                var pid=$(e.target).attr("data-target");
//                console.log(pid);
				
                location.href="product-detail.html?pid="+pid;
            })
        
            //实现分页；；；
            //拼HTML 内容；
            //绑定点击事件；
            //调用函数  ，，传递pno 当参数；
			var html="";
			var pno=parseInt(data.pno);
				html+=`	
				<ul>
					<li class="prev"><a href="#" >上一页</a></li>
					
					
				`
			if(pno-2>0){
                 html+=`
					<li><a href="#" >${pno-2}</a></li>
					 `
				} 
				 if(pno-1>0){
					html+=`
						<li><a href="#">${pno-1}</a></li>	
					`
				 }
				 html+=`
					<li class="current"><a href="#" >${pno}</a></li>	 
				 `
			if(pno<=data.countPno-1){
				html+=`
					<li><a href="#">${pno+1}</a></li>
					`
				}
				if(pno<=data.countPno-2){
					html+=`
						<li><a href="#">${pno+2}</a></li>	
					`
				}
				html+=`
					<li class="next"><a href="#">下一页</a></li>
					</ul>	
				` 
					$(".pages").html(html);
				$(".pages>ul").on("click","li:not(.prev,.next)",function(e){
					var pno=$(this).children("a").html();
					pageLoad(pno);
				})
					if(pno==1){
						$(".prev").addClass("disabled");
					}
             $(".pages>ul").on("click","li.prev>a",function(e){
					pno=$(".current>a").html();
//					console.log(pno);
					if(pno>1){
//						pno-=1;
						$(".current").prev().addClass("current").siblings().removeClass("current");
						pageLoad(pno-1);
					}
				})
				if(pno==data.countPno){
						$(".next").addClass("disabled");
					}
				$(".pages>ul").on("click","li.next>a",function(e){
					pno=parseInt($(".current>a").html());
//					console.log(pno);
					if(pno<data.countPno){
						$(".current").next().addClass("current").siblings().removeClass("current");
						pageLoad(pno+1);

					}
				})
        },
        error:function(){
            alert("网络故障");
        }
    })
}

pageLoad(1);


				//    加减号的实现；；
            $("#product-list").on("click",".reduce",function(e){
               e.preventDefault();
                var val=$(this).parent("div").children("input").val();
                if(val>1){
                val-=1;
                }
                $(this).parent("div").children("input").val(val);
            })
            $("#product-list").on("click",".add",function(){
                var vals=parseInt($(this).prev().val());
                vals++;
                $(this).prev().val(vals);

            })
//			跳转回首页；
	 $("#backIndex").click((e)=>{
		e.preventDefault();
		location.href="index.html";
	 });

/*
							//实现加入购物车；；
				//			绑定事件
//				            在头部的购物车上+上添加的数量
//                           另写一个购买页面，，显示加入购物车的数目；；
	var html="",num=0,i=0;
	$("#product-list").on("click",".product>div>a.cart",function(e) {
		var count = $(".product>div>input").val();
		var pid = $(this).attr("href");
//		console.log(pid);
		e.preventDefault();
		$.ajax({
			url: 'data/cart_add.php',
			type: 'post',
			data: {pid: pid, count: count},
			success: function (data) {
//				var arr=data;
				$.each(data, function (idx, obj) {

					html += `
							<li data-pid=${obj.pid}>
							<span class="pro-name">${obj.fname}...</span>
							<button class="add">+</button>	
							<input class="pro-count" value="${obj.count}">
							<button class="reduce">-</button>
							<span class="pro-price">¥${obj.price}</span>
					       </li>
					
				`;
					num += obj.price * obj.count;
				})
				$(".cart-list").html(html);

				console.log(parseInt(num).toFixed(2));
				$(".total").html(parseInt(num).toFixed(2));
			},
			error: function () {
				alert("你的网络故障");
			}
		});
	})

//*******************************清空购物车*****************************
	$("#header").on("click","span.all-null",function(){
		$.ajax({
			url:'';
		})

	})
  

*/
 /*   pid  session 

	$("#product-list").on("click",".product>div>a.cart",function(e){
		e.preventDefault();
		$("#header>.search>.cart>.num").show();
		
		var num1=parseInt($("#header>.search>.cart>.num").html());
		console.log(num1);

		var num2=parseInt($(this).parent().find("input").val());

		var count=num1+num2;
		$("#header>.search>.cart>.num").html("+"+count);
		var count=$("#header>.search>.cart>.num").html();
		 sessionStorage.setItem("cart_count",count);
			
		})
		var pid=$("#product-list .product>img").attr("data-target"); 
		console.log(pid);
//		点击购物车显示购物清单；；
		$("#header").on("click","div.cart",function(e){
			e.preventDefault();
			location.href="cart.html?pid="+pid;
			
		})
*/

