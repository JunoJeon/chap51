<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alpha.jsp</title>
<style type="text/css">
.surface {
	border: 10px solid red;
	border-collapse: collapse;
	font-family: monospace;
	font-size: 20pt;
}
</style>
<script type="text/javascript" src="/js/alpha.js"></script>
</head>
<body>
<h1>Alpha Move</h1>
<hr>
<span style="font-size: 15pt;"><b>count : </b><sub id="count"></sub></span>
<table id="cmd" class="surface">
	<tbody>
		<c:forEach var="i" begin="0" end="19">
		<tr>
			<c:forEach var="j" begin="0" end="39">
			<td style="color: black; background: black">@</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>