(()=>{
//加载header 头部
	$.get("header.html").then(function(data){
		$("#header").html(data);
		
// 购物车跳转
	$(".search .cart").on("click",function(e){
		e.preventDefault();
		isLogin("pay.html");
//		location.href="pay.html";
	});
	
//	*************************************搜素************************************

		$("#search-btn").on("click",function(){
			var kw=$(".search-font").val();
			var url="product.html?kw="+kw;
			location=url;
		})

			$(".logo a").click(function(){
			location.href="index.html";
		});
//		搜索帮助   

		

//    ***************************用户名保存在session中**********************************
			$.ajax({
				type:"get",
				url:"data/isSave.php",
				success:function(data){
					console.log(data);
					if(data.code>0){
						$(".login").hide();
						$(".hello").show();
						var html="";
						html+=`
							<p class="welcome">
								<span>欢迎来到粉色!</span>
								<a href="#">你好，${data.uname}</a>
								<a href="#" class="logout">&nbsp;&nbsp; 注销</a>
							</p>
								`
						$(".hello").html(html);
					}
				},
				error:function(){
					alert("网络错误");
				}
			})

		$(".hello").click("a.logout",function(){
			$.ajax({
				url:"data/logout.php",
				type:"get",
				success:function(data){
					$(".login").show();
					$(".hello").hide();
					location.href="index.html";
				}
			})
		})
//********************************************************************************
	  
	//	************下拉菜单*********************************
		$(".right-header").on("mouseover","a.theme",function(){
			$(".drop-header").show();
			$(".theme").css("background","#fff");
		})
		$(".right-header").on("mouseout","a.theme",function(){
			$(".drop-header").hide();
			$(".theme").css("background","#f2f2f2");

		})

	})
	//搜素框的滚动固定
	window.addEventListener("scroll",()=>{
		var search=$(".search");
		var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
		if(scrollTop>=470){
			search.addClass("fixed");
		}else{
			search.removeClass("fixed");
		}

	})
	
	
})();

//		判断是否登录页面。。。。。
		function isLogin(url){
			$.ajax({
				url:'data/isSave.php',
				type:"get",
				success:function(data){
					console.log(data);
					if(data.code>0){
//						console.log(111111);
						location.href=url;
					}else {
						alert("你未登录，点击确定去登录！！");
						location.href="login.html";
					}
				},
				error:function(){
					alert("网络故障");
				}
			});
		}
		