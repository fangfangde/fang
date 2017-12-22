(()=>{
///        添加购物车；；；
$("#product-list").on("click","a.cart",function(e){
	e.preventDefault();
	var title=$(this).parent().parent().find(".title").html();
	var id=$(this).parent().parent().attr('id');
	var price=$(this).parent().parent().find(".price").html().substring(1);
	var num=$(this).parent().parent().find("input").val();

	var length=$(".cart-drop .cart-list>div").length;  //获取你插入数据的个数；；
	var one_total_price=(price*num).toFixed(2);
	var arr=($(".cart-list").find("div").attr('id'));
	$(".cart-drop .cart-list>div").each(function(){
		if($(this).attr('id')==id){
			console.log($(this));
			var one_cartnum=parseFloat($(this).find("input").val());
			var one_cartprice=parseFloat($(this).find('.cart_price').html());
			var newnum=one_cartnum+parseFloat(num);
			$(this).find('input').val(newnum);
			$(this).find('.cart_price').html((one_cartprice+parseFloat(one_total_price)).toFixed(2));
		}else{
			length--;
			if(length==0){
				var html=`
					<div id=${id} class="addtion">
						<span 
					style='display:inline-block;width:73px;overflow:hidden;text-overflow:ellopsis; white-space:nowrap;'>
						${title}...
					</span>	
					<div>
						<span class="cart_reduce">-</span>
						<input type="text" value="${num}" class="in-val">
						<span class="cart_add">+</span>
					</div>
						<span class="rt pc">¥:
							<span class="cart_price">${one_total_price}
						</span>
						</span>	
					</div>		
				`;
			$(".cart-drop .cart-list").append(html);
			}
		}
	})
	total();
})
	function total(){
		var total=parseFloat(0.00);
		$(".cart-drop  div.addtion").each(function(){
			var op=parseFloat($(this).find(".cart_price").text());
			total+=op;
		})
			$(".total_price span.total").html(total.toFixed(2))	
}
	$(".cart-drop").on(".cart_reduce","click",function(){
		var numone=parseFloat($(this).next("input").val());
		numone-=1;
		if(numone==0){
			$(this).parent().parent().remove();
		}
		if(numone>1){
			$(this).next('input').val(numone);
			var id=$(this).parent().attr('id');
			var this_price=$(".product-list").find("#"+id).find(".price").text();
			var new_this_price=numone*this_price;
			$(this).parent().next('span').find(".cart_price").html(new_this_price.toFixed(2));
		}
		update();
	})

	$('.cart-drop').on('.cart_add', 'click', function () {
  var numtwo = parseFloat($(this).prev('input').val());
  numtwo += 1;
  $(this).parent().parent('input').val(numtwo);
  var id = $(this).parent().attr('id');
  var this_price = $('.product-list').find("#" + id).find('.price').text();
  var new_this_price = numtwo * this_price;
  $(this).parent().next('span').find('.cart_price').html(new_this_price.toFixed(2));
  update();
})
		function update(){
		var update_total=parseFloat(0.00);
		$('.cart_drop>div.addtion').each(function () {
			 var tp = parseFloat($(this).find('.cart_price').html());
			update_total += tp;
  })
  $('.total_price span.total').html(update_total.toFixed(2));
	}
$('.clear').click(function () {
  $('.addtion').remove();
  var clear_total = 0;
  $('.total_price span.total').text("¥:"+clear_total.toFixed(2));
})

var str=[];
$(".cart-drop").on("click",".pay",function(){
		isLogin("pay.html");
	var pids=$(this).parent().siblings(".cart-list").find(".addtion");
	console.log(pids);
		pids.each(function(){
			var pid=$(this).attr("id");
			sessionStorage[pid]=pid;
			var count=$(this).children("div").children(".in-val").val();
			str.push({
				pid:pid,
				count:count
			});
		})
		for(key of str){
			console.log(key);
			$.ajax({
				type:"post",
				url:"data/cart_add.php",
				async:false,
				data:{pid:key.pid,count:key.count},
				success:function(data){
					if(data.code>0){
						
						location.href="pay.html";
					}else{
						return;
					}
				},
				error:function(){
					alert("网络故障");
				}
			});
		}
		
})
})()