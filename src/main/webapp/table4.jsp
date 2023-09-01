<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table.jsp</title>
<script type="text/javascript">

class Alpha {
	static color = [ 'Black',
	    	 		 'Red',
	   	 	 		 'Green',
	    			 'Yellow',
	   	 			 'Blue',
	    			 'Magenta',
	    			 'Cyan',
	    			 'White'];
	constructor() {
		this.line = parseInt(Math.random()*20+1);
		this.column = parseInt(Math.random()*40+1);
		do{
			this.fg = Alpha.color[parseInt(Math.random()*8)];
			this.bg = Alpha.color[parseInt(Math.random()*8)];
		} while (this.fg == this.bg);
		this.ch = String.fromCharCode(parseInt(Math.random()*26) + 'A'.charCodeAt(0));
	}
	
	genTr() {
		console.log(`(\${this.line},\${this.column},\${this.fg},\${this.bg},\${this.ch})`)
		let values = [this.line, this.column, this.fg, this.bg, this.ch];
		let tr = document.createElement('tr');
		for (let v of values) {
			let td = document.createElement('td')
			td.align = 'center';
			td.innerText = v;
			
			tr.append(td);
		}
		return tr;
	}
	
}

window.onload = function() {
	let table = document.querySelector('table');
	for (let i=0; i<20; i++) {
		let a = new Alpha();
		table.tBodies[0].append(a.genTr());
	}
	
	table.onclick = function(e) {
		let td = e.target;
		
		if(td.tagName == 'td'.toUpperCase)
			return;
		
		let tr = td.parentElement;
		
		tr.style.background = 'red';
		setTimeout(() => tr.style.background = 'white', 500);
		
		let info = `
			sectionRowIndex = \${tr.sectionRowIndex}<br>
			rowIndex = 		  \${tr.rowIndex}<br>
			cellIndex = 	  \${td.cellIndex}<br>
		`
		
		result.innerHTML = info;
		
		let ch = tr.cells[4].innerText;
		let fg = tr.cells[2].innerText;
		let bg = tr.cells[3].innerText;
		
		display.innerText = ch;
		display.style.color = fg;
		display.style.background = bg;
	}
}
</script>
</head>
<body>
<h1>Table tag 실습</h1>
<hr>
<p id = "result">
</p>
<span id = "display" style = "font-size : 30px">
</span>
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