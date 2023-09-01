<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table.jsp</title>
<script type="text/javascript">
window.onload = function() {
	
	let line = parseInt(Math.random()*20+1);
	let column = parseInt(Math.random()*40+1);
	let fg = parseInt(Math.random()*8+30);
	let bg = parseInt(Math.random()*8+40);
	let ch = String.fromCharCode(parseInt(Math.random()*26) + 'A'.charCodeAt(0));
	console.log(`(\${line},\${column},\${fg},\${bg},\${ch})`)
	
	let alpha = [line, column, fg, bg, ch];
	let tr = document.createElement('tr');
	for (let v of alpha) {
		let td = document.createElement('td');
		td.align = 'center'
		td.innerText = v
		
		tr.append(td);
	}
	
	let table = document.querySelector('table')

	table.tBodies[0].append(tr)
	
	
}
</script>
</head>
<body>
<h1>Table tag 실습</h1>
<hr>
<p id = "result">
</p>
<table border = "1" style = "width: 500px">
	<thead>
		<tr>
			<th>line</th>
			<th>column</th>
			<th>fg</th>
			<th>bg</th>
			<th>ch</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td align = "right">10</td>
			<td align = "right">20</td>
			<td align = "center">30</td>
			<td align = "center">40</td>
			<td align = "center">A</td>
		</tr>
		<tr>
			<td align = "right">5</td>
			<td align = "right">4</td>
			<td align = "center">31</td>
			<td align = "center">44</td>
			<td align = "center">Z</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<th>line</th>
			<th>column</th>
			<th>fg</th>
			<th>bg</th>
			<th>ch</th>
		</tr>
	</tfoot>
</table>
</body>
</html>