
	$(function(){
		//提示输入框信息
		
		$(".form-group input").popover();
		
		//用户名
		$("#inputUserName").blur(function(){
			var code = $("#inputUserName").val();
			var reg = /^[\w_]{5,10}$/;
			$("#inputUserName").popover('hide');
			if(reg.test(code)){
				//console.log("1230");
				$("#inputUserName").parent().children("span").eq(1).hide();
				$("#inputUserName").parent().children("span").eq(0).show('slow');			
				return true;
			}else{
				//$(".glyphicon-remove").show();
				$("#inputUserName").parent().children("span").eq(0).hide();
				$("#inputUserName").parent().children("span").eq(1).show('slow');
				return false;
			}
		});
		
		//密码
		$("#inputPassword").blur(function(){
			var code = $("#inputPassword").val();
			var reg = /^(?:\d+|[a-zA-Z]+|[!@#$%^&*]+){6,12}$/;
			$("#inputPassword").popover('hide');
			if(reg.test(code)){
				//console.log("1230");
				$("#inputPassword").parent().children("span").eq(1).hide();
				$("#inputPassword").parent().children("span").eq(0).show('slow');			
				return true;
			}else{
				//$(".glyphicon-remove").show();
				$("#inputPassword").parent().children("span").eq(0).hide();
				$("#inputPassword").parent().children("span").eq(1).show('slow');
				return false;
			}
		});
		$(".footer-left ul li").eq(0).popover({
			html:true,
			content:'<img src="images/1.jpg" alt="..." class="img-rounded" style = "width:100px;height:100px;">'
		});
		
		$(".container").hide();
		$(".container").slideDown(1000);
		//开场动态加载图片
	/* 	$(".container").hide();
		$(".container").click(()=>{
			
		});
		//2秒后显示
		setTimeout(()=>{
			$(".container").trigger('click');
		},2000); */
		
	});
