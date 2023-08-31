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
<h1> Event Bubble(버블) </h1>
<ol id = "lang">
	<li>java</li>
	<li>python</li>
	<li>sql</li>
</ol>
<script type="text/javascript">
	lang.onclick = function(e) {
		console.log(this)
	}
	
	for (let li of lang.children) {
		li.onclick = function() {
			console.log(this.innerText);
		}
	}
	
	document.body.onclick = function() {
		console.log("body click")
	}
	
	document.documentElement.onclick = function() {
		console.log("html click")
	}
</script>
</body>
</html>