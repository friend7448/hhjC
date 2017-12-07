/*
 * @param string grid_id 사이즈를 변경할 그리드의 아이디
 * @param string div_id 그리드의 사이즈의 기준을 제시할 div 의 아이디
 * @param string width 그리드의 초기화 width 사이즈
 */
function hhj_resizeJqGridWidth(grid_id, div_id, width){
//	alert(width);
    // window에 resize 이벤트를 바인딩 한다. 
    $(window).bind('resize', function() {
    var resizeWidth = width; //jQuery-ui의 padding 설정 및 border-width값때문에 넘치는 걸 빼줌.
    // 그리드의 width 초기화
    $('#' + grid_id).setGridWidth(width, true);
	// 그리드의 width를 div 에 맞춰서 적용
    $('#' + grid_id).setGridWidth($('#' + div_id).width() , true); //Resized to new width as per window
     }).trigger('resize');
 }

