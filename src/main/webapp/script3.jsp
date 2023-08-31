<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script.jsp</title>
<style type="text/css">
ol {
	border: 1px solid red;
}
li {
	border: 1px solid blue;
}
</style>
</head>
<body>
<ol id = "lang">
	<li>java</li>
	<li>python</li>
	<li>sql</li>
</ol>
<script type="text/javascript">
	lang.onclick = function(e) {
		console.log(this)
		let li = e.target
		li.style.background = 'red';
	}
</script>
</body>
</html>