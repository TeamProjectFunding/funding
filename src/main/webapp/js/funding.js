
	$(function() {
	    var $ct = $("li");
	    var count = $ct.size();
	    var c_idx = o_idx = 0;
	    var height = $("ul").height();
	    var a_delay = 300;
	    var time = 6000;
	    var a_time = 800;
	    var interval = null;
	    
	    interval = setInterval(image_drop, time);
	});
	
	function image_drop()
	{
	    var delay = 0;
	    
	    $.eq(o_idx).find("div").css("top", "-"+height+"px");
	    c_idx = (o_idx + 1) % count;
	    $ct.eq(c_idx).css("display", "block");
	    $ct.eq(c_idx).find("div").each(function() {
	        $(this).delay(delay).animate(
	            { top: "+="+height+"px" }, a_time
	        );
	        delay += a_delay;
	    });
	    o_idx = c_idx;
	}
	
