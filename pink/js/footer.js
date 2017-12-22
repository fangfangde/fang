(()=>{
//加载footer 尾部
	$.get("footer.html").then(function(data){
		$("#footer").html(data);
	})
})();