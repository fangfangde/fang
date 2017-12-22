
	$.ajax({
			url:'data/pay.php',
			type:'get',
			success:function(data){
				console.log(data);
				var html="";
				$.each(data,function(i,obj){
					html+=`
						<li>
						<input type="checkbox" class="checked">
						<img src="${obj.sm}" alt="" style="width:35px;height:35px">
						<span class="title">${obj.subtitle} </span>
						<span class="price">￥${obj.price}</span>
						<button id="reduce" class="isYun">-</button>
						<input type="text" value="${obj.count}" class="buyCount">
						<button id="add" class="isYun">+</button>
						<span class="total">￥${(obj.count*obj.price).toFixed(2)}</span>
						<a data-torget="${obj.pid}" class="del">删除</a>
					</li>	
				
				`;
				$(".cart-plist").html(html);
			
			})
		},
		error:function(){
			alert("网络故障");
		}
	})
	
	
		
//	     ***************全选删除******************
	 var sum=0; // 数量合计；
	 var psum=0; //价格合计
		var choose=$(".all-chose");
	choose.click(function(){
			/*$.each($(".checked"),function(inx,value){
			  console.log(value.checked);
			  if($(".all-chose").is("checked")){
				if(value.checked){
					value.checked= true;
				}else{
					value.checked=false;
;				}
			  }
				
		  })*/
	      var isBool=$(this).is(":checked");
		  $(".checked").attr("checked",isBool);
		  
			})
		$(".cart-plist").on("click",".checked",function(){
			var obj=$(this);
		   var val=parseInt((obj.siblings(".buyCount").val()));
		   var pri=parseInt((obj.siblings(".price").html().slice(1)));
			if($(this).is(":checked")){
				$(this).attr("checked",true);
				sum+=val;
				psum+=pri*val;
			}else{
				$(this).removeAttr("checked");
				sum-=val;
				psum-=pri*val;
			}
				var unchecked=$(".checked:not(:checked)");
					console.log(unchecked);
					if(unchecked.length==0){
						for(var s of choose){				
							s.checked=true;
						}
					}else{
					     for(var s of choose){
							s.checked=false;
					       }
					}
			    $(".top-count").html(sum);
				$(".top-Tprice").html("￥"+psum);
				})
//   **************************加减号*******************************
		function Readd(className,elem){
			var pTit;   //总价格；
			var countElem=elem.siblings(".buyCount");
			var price=elem.siblings(".price").html().slice(1);
			var title=elem.siblings(".total");
			var TopcountElem=$(".top-count");
			var Topcount=$(".top-count").html();  //头部的 总个数，，
			var value=countElem.val();
			if(className=="reduce"){
				value--;
				countElem.val(value);
				pTit=countElem.val()*price;
				title.html("￥"+pTit);
				Topcount--;
				TopcountElem.html(Topcount);
				console.log(Topcount);
				if(value==0){
					value=1;
				}
			}else if(className=="add"){
				value++;
				countElem.val(value);
			pTit=countElem.val()*price;
				title.html("￥"+pTit);
				Topcount++;
				TopcountElem.html(Topcount);
			}
			
		}	
		$(".cart-plist").on("click",".isYun",function(){
			var name=$(this).attr("id");
			console.log(name);
			Readd(name,$(this));
		
		})
        console.log($(".pay"));
		$(".pay").click(function(){
			location="money.html"
		
		})
	    $(".cart-plist").on("click",".del",function(e){
			console.log(111);
			e.preventDefault();
			console.log($(this));
			var pid=$(this).attr("data-torget");
			console.log(pid);
			$.ajax({
				url:'data/del-cart.php',
				type:'post',
				data:{pid:pid},
				success:function(data){
					if(data.code>0){
						alert(data.msg);
					}else{
						alert(data.msg);
					}
				}
			})
		})



		/*if($(this).is(":checked")){
			$(".all-chose").attr("checked","false");
		}*/

		
		
	
