

lang.onclick = function(e)	{
	console.log(e.target)
	lang.append(e.target)
	msg.innerText = e.target.innerText + " append"
}

lang.ondblclick = function(e) {
	lang.prepend(e.target)
	msg.innerText = e.target.innerText + " prepend"
}

for (let li of lang.children) {
	li.onmouseenter = function() {
		this.style.background ='red';
	}
	li.onmouseleave = function() {
		this.style.background = 'white';
	}
}