//var data.RECORDS = 10; // 한 페이지에 보여줄 페이지 수 (ex:1 2 3 4 5)
var save_page = 1;
/**
 * 그리드 페이징
 * 
 * @param gridId
 * @param pagerId
 */

function initPage(gridId, pagerId, data) {
	// 현재 페이지
	var currentPage = $('#' + gridId).getGridParam('page');
//debugger;
	// 전체 리스트 수 (전체 row 수)
	var totalSize = data.totalCount;
	// 그리드 데이터 전체의 페이지 수 (전체row / 한번에 보여질 row 수 = 전체 페이지 수)
	var totalPage = data.TOTAL;

	// 전체 페이지 수를 한화면에 보여줄 페이지로 나눈다. (전체페이지중 한번에 보여질 페이지 수)
	var totalPageList = Math.ceil(totalPage / data.RECORDS);

	// 페이지 리스트가 몇번째 리스트인지
	var pageList = Math.ceil(currentPage / data.RECORDS);

	// 페이지 리스트가 1보다 작으면 1로 초기화
	if (pageList < 1)
		pageList = 1;

	// 페이지 리스트가 총 페이지 리스트보다 커지면 총 페이지 리스트로 설정
	if (pageList > totalPageList)
		pageList = totalPageList;

	// 시작 페이지
	var startPageList = ((pageList - 1) * data.RECORDS) + 1;
	// 끝 페이지
	var endPageList = startPageList + data.RECORDS - 1;

	// 시작 페이지와 끝페이지가 1보다 작으면 1로 설정
	// 끝 페이지가 마지막 페이지보다 클 경우 마지막 페이지값으로 설정
	if (startPageList < 1)
		startPageList = 1;

	if (endPageList > totalPage)
		endPageList = totalPage;

	if (endPageList < 1)
		endPageList = 1;

	// 페이징 DIV에 넣어줄 태그 생성변수
	var pageInner = "<div class='container-fluid' style='border: 1px solid #ddd; border-top-style:none;'>" +
			"<div class='row'>" +
			"<div class='col-sm-10' style='text-align: center'>" +
			"<ul class='pagination' style='margin: 0; margin-top:4px'>";

	// 페이지 리스트가 1이나 데이터가 없을 경우 (링크 빼고 흐린 이미지로 변경)
	if (pageList < 2) {
		pageInner += "<li class='disabled'><a href='#'><span class='glyphicon glyphicon-fast-backward'> </span></a></li>";
		pageInner += "<li class='disabled'><a href='#'><span class='glyphicon glyphicon-step-backward'> </span></a></li>";
	}

	// 이전 페이지 리스트가 있을 경우 (링크넣고 뚜렷한 이미지로 변경)
	if (pageList > 1) {
		pageInner += "<li><a href='javascript:firstPage(\"" + gridId + "\");'><span class='glyphicon glyphicon-fast-backward'> </span></a></li>";
		pageInner += "<li><a href='javascript:prePage(\""+ gridId + "\", " + data.RECORDS + ");'><span class='glyphicon glyphicon-step-backward'> </span></a></li>";
	}

	
	for (var i = startPageList; i <= endPageList; i++) {
		if (i == currentPage) {
			pageInner += "<li class='active'><a href='javascript:goPage(\"" + gridId + "\", \"" + (i) + "\");'>" + (i) + "</a></li>";
		} else {
			pageInner += "<li><a href='javascript:goPage(\"" + gridId + "\", \"" + (i) + "\");'>" + (i) + "</a></li>";
		}
	}
	
	// 다음 페이지 리스트가 있을 경우
	if (totalPageList > pageList) {
		pageInner += "<li><a href='javascript:nextPage(\""+ gridId + "\", " + data.RECORDS + ");'><span class='glyphicon glyphicon-step-forward'> </span></a></li>";
		pageInner += "<li><a href='javascript:lastPage(\""+ gridId + "\", \"" + totalPage + "\");'><span class='glyphicon glyphicon-fast-forward'> </span></a></li>";
	}

	// 현재 페이지리스트가 마지막 페이지 리스트일 경우
	if (totalPageList == pageList) {
		pageInner += "<li class='disabled'><a href='#'><span class='glyphicon glyphicon-step-forward'> </span></a></li>";
		pageInner += "<li class='disabled'><a href='#'><span class='glyphicon glyphicon-fast-forward'> </span></a></li>";
	}
	
	pageInner += "</ul>" +
			"</div>" +
			"<div class='col-sm-2'>";
	if(totalSize == 0){
		pageInner += "<div class='pull-right' style='padding-top: 20px;'>표시할 데이터가 없습니다";
	}
	else {
		pageInner += "<div class='pull-right' style='padding-top: 20px;'>총 " + totalSize + "개";// 중" + data.START_ROW + "~" + data.END_ROW;	
	}

	pageInner += "</div>" +
			"</div>";
	
	
	$("#" + pagerId).html("");
	$("#" + pagerId).append(pageInner);
}

// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 그리드 첫페이지로 이동
function firstPage(gridId) {
	$("#" + gridId).jqGrid('setGridParam', {
		page : 1,
	}).trigger("reloadGrid");
}

// 그리드 이전페이지 이동
function prePage(gridId, records) {
	var currentPage = $("#" + gridId).getGridParam('page');
	currentPage -= records;
	pageList = Math.ceil(currentPage / records);
	currentPage = (pageList - 1) * records + records;
	save_page = currentPage; // 저장
	$("#" + gridId).jqGrid('setGridParam', {
		page : currentPage,
	}).trigger("reloadGrid");
}

// 그리드 다음페이지 이동
function nextPage(gridId, records) {
	var currentPage = $("#" + gridId).getGridParam('page');
	debugger;
	currentPage += records;
	pageList = Math.ceil(currentPage / records);
	currentPage = (pageList - 1) * records + 1;
	save_page = currentPage; // 저장
	$("#" + gridId).jqGrid('setGridParam', {
		page : currentPage,
	}).trigger("reloadGrid");
}

// 그리드 마지막페이지 이동
function lastPage(gridId, lastPage) {
//	var totalSize = data.totalCount;
//	var totalPage = Math.ceil(data.totalSize / data.TOTAL);
	save_page = lastPage; // 저장
	$("#" + gridId).jqGrid('setGridParam', {
		page : lastPage,
	}).trigger("reloadGrid");
}

// 그리드 페이지 이동
function goPage(gridId, num) {
	save_page = num; // 저장
	$("#" + gridId).jqGrid('setGridParam', {
		page : num,
	}).trigger("reloadGrid");
}
