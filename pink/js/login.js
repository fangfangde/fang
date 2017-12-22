
(()=>{
    $("#Login").click(function(){
        var uname=$("#uname").val();
        var pwd=$("#pwd").val();
        if($.trim(uname) && $.trim(pwd)){
            $.ajax({
                url:"data/login.php",
                type:"post",
                data:{uname:uname,pwd:pwd},
                success:function(data){
                    if(data.code>0){
                        alert("登录成功");
                        location.href="index.html";
                    }else{
                        $(".vailLogin").html(data.msg);
                        $("#uname").val("");
                        $("#pwd").val("");
                    }
                },
                error:function(){
                    alert("网络错误");
                }
            })
        }else{
            $("#Login").attr("disabled",disabled);
        }
    });

})()
