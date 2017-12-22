
	var uname=$("#uname"),
	     pwd=$("#pwd"),
	     qPwd=$("#qPwd"),
	     email=$("#email"),
	     phone=$("#phone"),
		 Yname=$("#Yname"),
		 Ypwd=$("#Ypwd"),
	     Yqpwd=$("#Yqpwd"),
		 Yemail=$("#Yemail"),
	     btnReg=$("#reg"),
	     Yphone=$("#Yphone"),
		 Ycheck=$("#Ycheck");
		pwd.blur(function(){
			var vp=pwd.val();
			if($.trim(vp)==""){
				Ypwd.html("密码不能为空");
				Ypwd.addClass("error");
			}
			qPwd.blur(function(){
				var qpv=qPwd.val();
				if($.trim(qpv)==""){
					Yqpwd.html("密码不能为空");
					Yqpwd.addClass("error");
				}
				if(vp!==qpv){
					Yqpwd.html("输入的密码不一致");
					Yqpwd.addClass("error");
				}
				if(vp==qpv){
					Yqpwd.html(" ");
				}
			})
		});
		uname.blur(function(){
			var vn=uname.val();
			if($.trim(vn)==""){
			    Yname.html("用户名不能为空");
				Yname.addClass("error");
			}
		})

	//验证密码邮箱用户名手机号的格式是否正确；；
	function vali(elem,reg,msgelem,msg){ //要验证的元素，正则表达式，提示的元素，提示语句
		var val=elem.val();
		var reg=reg.test(val);
		if(reg){
			msgelem.html("格式正确");
			msgelem.addClass("right");
			msgelem.removeClass("error");
			return true;
		}else{
			msgelem.html(msg);
			msgelem.addClass("error");
			msgelem.removeClass("right");
			return false;
		} 
	}     
    function bing(elem,reg,msgelem,msg){
		elem.focus(function(){
			msgelem.html(msg);
		});
		elem.blur(function(){
			vali(elem,reg,msgelem,msg);
		})
	}
    bing(uname,/\w{6,12}/,Yname,"长度在6~12位之间");
	bing(pwd,/\w{6,9}/,Ypwd,"长度在6~9位之间");
	bing(phone,/\d{11}/,Yphone,"长度为11位的数字");
	bing(email,/\w*@\w*.\w*/,Yemail,"必须包含@符号");

	/*if(reName){
		var vname=uname.val();
		$.ajax({
			url:"data/isName.php",
			type:"post",
			data:{uname:vname},
			success:function(data){
				if(data.code>1){
					Yname.html(data.msg);
				}else{
					Yname.html(data.msg);
				}
			},
			error:function(){

			}
		})
	}*/
	uname.blur(function(){
		var reName=vali(uname,/\w{6,12}/,Yname,"长度在6~12位之间");	
		if(reName){
			$.ajax({
				url:"data/isName.php",
				type:"post",
				data:{uname:uname.val()},
				success:function(data){
					console.log(data);
					if(data.code>0){
						Yname.html(data.msg);
					}else{
						Yname.html(data.msg);
					}
				},
				error:function(){
					alert("网络错误");
				}
			})
		}
	})

	btnReg.click(function(e){
		var reName=vali(uname,/\w{6,12}/,Yname,"长度在6~12位之间");
		var repwd=vali(pwd,/^\w{6,9}$/,Ypwd,"长度在6~9位之间");
		var rephone=vali(phone,/^\d{11}$/,Yphone,"长度为11位的数字");
		var reemail=vali(email,/^\w*@\w*.\w*$/,Yemail,"必须包含@符合");
			e.preventDefault();
		var vuname=uname.val(),
			vpwd=pwd.val(),
			vemail=email.val(),
			vphone=phone.val();
		if(reName&&repwd&&rephone&&reemail){
			console.log(vpwd,vemail,vphone);
			$.ajax({
				url:"data/regist.php",
				type:"post",
				data:{uname:vuname,pwd:vpwd,email:vemail,phone:vphone},
				success:function(data){
					console.log(data);
					if(data.code>0){
						alert(data.msg);
						location.href="login.html";
					}else{
						alert(data.msg);
					}
				},
				error:function(){
						alert("网络错误");
				}
			})
		}
		})






	

/*	$.ajax("data/regist.php?uname="+$uname+"&phone="+$phone+"&email="+$email+"&pwd="+$pwd,"post",function(data){
		console.log(data);
		if(data==true){
		var url="http://localhost/pink/login.html";
		location=url;

		}else{
			alert("注册失败");
		}
	});
})()*/