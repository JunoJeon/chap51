<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script.jsp</title>
</head>
<body>
<h1 onclick="console.log(this); console.log(event);">Script 사용방법</h1>
<h2 id ="head1">onclick</h2>
<script type="text/javascript">
	head1.onclick = function(e) {
		console.log(this)
		console.log(e.target)
	}
</script>
</body>
</html>