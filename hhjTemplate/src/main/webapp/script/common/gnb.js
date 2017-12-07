$(function(){
    
    var max_h = 0;
    var tmp_h = 0;
    for (var i = 1; i < 7; i++) {
        var h = jQuery(".twoD").eq(i).css("height");
        
        if (h != null) {
            tmp_h = Number(h.replace('px', ''));
            if (tmp_h > max_h) {
                max_h = tmp_h;
            }
            
        }
        //alert(max_h);
    } 
    max_h = max_h + 65;
    //alert(max_h);
	//gnb
    //return;
	jQuery(".gnbL").mouseenter(function(e){		
		jQuery(".gnbL").stop().animate({height:max_h},300);
		jQuery(".gnbBg").stop().animate({height:max_h-45},300);
		jQuery(".gnbBg").css("border-bottom","1px solid #0070bd");
	}).focusin(function(){
		jQuery(".gnbL").mouseenter();
	})

	jQuery(".gnbL").mouseleave(function(e){		
		jQuery(".gnbL").stop().animate({height:45}, 300);
		jQuery(".gnbBg").stop().animate({height:0},300);
		jQuery(".gnbBg").css("border","none");
	}).focusout(function(){
		jQuery(".gnbL").mouseleave();
	})

	jQuery(".gnbBg").mouseenter(function(e){		
		jQuery(".gnbL").stop().animate({height:max_h},300);
		jQuery(".gnbBg").stop().animate({height:max_h-45},300);
		jQuery(".gnbBg").css("border-bottom","1px solid #0070bd");
	}).focusin(function(){
		jQuery(".gnbL").mouseenter();
	})

	jQuery(".gnbBg").mouseleave(function(e){		
		jQuery(".gnbL").stop().animate({height:45}, 300);
		jQuery(".gnbBg").stop().animate({height:0},300);
		jQuery(".gnbBg").css("border","none");
	}).focusout(function(){
		jQuery(".gnbL").mouseleave();
	})
});
