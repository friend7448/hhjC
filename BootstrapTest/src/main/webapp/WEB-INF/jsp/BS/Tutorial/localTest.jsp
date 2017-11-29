<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--   -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="/BootstrapTest/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> -->
<link type="text/css" rel="stylesheet" href="../jqGrid_JS_5.2.1/css/ui.jqgrid-bootstrap.css" />
<!-- jQuery library -->
<script type="text/javascript" src="../jquery-3.2.1/jquery-3.2.1.min.js"></script>
<!-- <script type="text/javascript" src="./jquery-ui-1.12.1.custom/jquery-ui.min.js"></script> -->
<script type="text/javascript" src="../jqGrid_JS_5.2.1/i18n/grid.locale-kr.js"></script>
<script type="text/javascript" src="../jqGrid_JS_5.2.1/jquery.jqGrid.js"></script>
<script type="text/javascript" src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<table id="rowed5"></table>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		var lastsel2;
		jQuery("#rowed5").jqGrid({
			datatype: "local",
			height: 250,
		   	colNames:['ID Number','Name', 'Stock', 'Ship via','Notes'],
		   	colModel:[
		   		{name:'id',index:'id', width:90, sorttype:"int", editable: true},
		   		{name:'name',index:'name', width:150,editable: true,editoptions:{size:"20",maxlength:"30"}},
		   		{name:'stock',index:'stock', width:60, editable: true,edittype:"checkbox",editoptions: {value:"Yes:No"}},
		   		{name:'ship',index:'ship', width:90, editable: true,edittype:"select",editoptions:{value:"FE:FedEx;IN:InTime;TN:TNT;AR:ARAMEX"}},		
		   		{name:'note',index:'note', width:200, sortable:false,editable: true,edittype:"textarea", editoptions:{rows:"2",cols:"10"}}		
		   	],
			onSelectRow: function(id){
				if(id && id!==lastsel2){
					jQuery('#rowed5').jqGrid('restoreRow',lastsel2);
					jQuery('#rowed5').jqGrid('editRow',id,true);
					lastsel2=id;
				}
			},
// 			editurl: "server.php",

			caption: "Input Types"

		});
		var mydata2 = [
				{id:"12345",name:"Desktop Computer",note:"note",stock:"Yes",ship:"FedEx"},
				{id:"23456",name:"Laptop",note:"Long text ",stock:"Yes",ship:"InTime"},
				{id:"34567",name:"LCD Monitor",note:"note3",stock:"Yes",ship:"TNT"},
				{id:"45678",name:"Speakers",note:"note",stock:"No",ship:"ARAMEX"},
				{id:"56789",name:"Laser Printer",note:"note2",stock:"Yes",ship:"FedEx"},
				{id:"67890",name:"Play Station",note:"note3",stock:"No", ship:"FedEx"},
				{id:"76543",name:"Mobile Telephone",note:"note",stock:"Yes",ship:"ARAMEX"},
				{id:"87654",name:"Server",note:"note2",stock:"Yes",ship:"TNT"},
				{id:"98765",name:"Matrix Printer",note:"note3",stock:"No", ship:"FedEx"}
				];
		for(var i=0;i < mydata2.length;i++)
		 jQuery("#rowed5").jqGrid('addRowData',mydata2[i].id,mydata2[i]);

	});
</script>

</html>

