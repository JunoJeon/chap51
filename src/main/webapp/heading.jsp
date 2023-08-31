<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>heading.jsp</title>
<style type="text/css">
body {
	font-size: 30px
}
</style>
<script type="text/javascript">
function change(e) {
	let value = document.querySelector('i');
	document.body.style.fontSize = e.target.value + "px";
	value.innerText = e.target.value;
}
</script>
</head>
<body>
<header style="font-size : 10px">
	<input style = "font-size : 12px]"type = "range" min = "0" max = "100" oninput="change(event)">
	<span><b><i></i></b><sub>px</sub><sup>px</sup>px</span>
</header>
<hr>
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading<sup>♡</sup> 5</h5>
<h6>Heading<sub>♥</sub> 6</h6>
</body>
</html>