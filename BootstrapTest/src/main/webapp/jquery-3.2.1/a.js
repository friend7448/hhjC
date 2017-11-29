$(document).ready(function() {
	alert("a.js !");
	
	detail();
});


//리스트 상세정보 조회
function detail(nId)
{
    $.ajax({
        type: "POST",
        url: "../Tutorial/01.home.do",
        data: {
        	ACTION : 'Program.doSelectDetail',
        },
        dataType: 'json',
        error: function(){
            alert('조회중 오류가 발생하였습니다.');
        },
        success: function(jdata){doDetailCallback(jdata);}
    });
}

//상세정보 조회 결과
function doDetailCallback(jData)
{
	alert(jData);
}