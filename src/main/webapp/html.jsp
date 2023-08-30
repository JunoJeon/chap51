<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- HTML5 -->
<!doctype html>
<html lang = "ko"/>
<html>
<head>
<title>html.jsp</title>
<link rel="icon" type="image/png" href="/favicon.png">
<base href="/img/"> 
<style type="text/css">

</style>
<script type="text/javascript">
window.onload = function() {
	let html = document.documentElement;
	let head = document.head;
	let title = document.title;
	let body = document.body;
	
	html.style.border = '10px solid red';
	head.style.border = '10px solid blue';
	document.title = "Animal.jsp";
	
	body.style.border = '10px dashed green'
}
</script>
<link>
</head>
<body>
<h1> HTML5 문서 </h1>
<img alt="이미지가 안나올때" src="Lesserpanda.jpg" width="200">
<hr>
<img alt="이미지가 안나올때" src="Quokka.jpg" height="200">
</body>
</html>