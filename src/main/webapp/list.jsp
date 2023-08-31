<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<script type="text/javascript" src = "js/list.js"></script>
</head>
<body>
<h1>웹 애플리케이션 관련 기술</h1>
<hr>
<header>
<label for="tech">기술 </label> 
<input id = "tech" type="text">
<input id ="front" type="radio" name = "end" checked="checked"><sup>front</sup>
<input id = "back" type="radio" name = "end"><sub>back</sub>
<button id = "btnAppend">추가</button>
</header>
<hr>
<ul>
	<li>
	
		<h2>Front End</h2>
		<ol id="frontList">
			<li>HTML5</li>
			<li>CSS3</li>
			<li>JavaScript(ECMAScript)</li>
		</ol>
	</li>
	<li>
		<h2>Back End</h2>
		<ol id= "backList">
			<li>java</li>
			<li>oracle</li>
			<li>jsp</li>
			<li>spring</li>
			<li>nodejs</li>
			<li>python</li>
			
		</ol>
	
	
	</li>
	
</ul>
</body>
</html>