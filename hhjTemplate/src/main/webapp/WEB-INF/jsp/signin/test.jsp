<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<h1 id="b">My First JS</h1>
<button onclick="aa();">click~</button>
<p id="a">rgreg</p>

<script type="text/javascript">
	$(document).ready(function() {
	});
	
function aa() {
	document.getElementById("a").innerHTML = Date();
	document.getElementById("b").style.display = "none";
}
</script>