$(function(){
		$(".thumbnail").hover(function(){
			var imgObj1 = $(this).find(".front");
			var imgObj2 = $(this).find(".back");		

			imgObj1.stop().animate({width:0,left:"300px"},100,
				function(){
					imgObj2.show();
					imgObj2.css({left:"300px",width:0});
					imgObj2.stop().animate({width:600,left:"0px"},100);
				});
		},function(){
			var imgObj1 = $(this).find(".front");
			var imgObj2 = $(this).find(".back");
			imgObj2.stop().animate({width:0,left:"300px"},100,
					function(){
					imgObj1.stop().animate({width:600,left:"0px"},100)
				}
			);		
		});
	}); 