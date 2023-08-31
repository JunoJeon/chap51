
function btnAppend_click(e) {
	if (tech.value.trim() == '') {
		tech.value='';
		return;
	}
	
	let li = document.createElement('li');
	li.innerText = tech.value.trim();
	
	if (front.checked)
		frontList.append(li);
	else
		backList.append(li);
	
	
	tech.value = '';
	tech.focus();
	
	
}

function tech_keyup(e) {
	if (e.key == 'Enter')
		btnAppend_click();
}

function list_click(e) {
	let li = e.target;
	li.remove();
}


window.onload = function() {
	
	btnAppend.onclick = btnAppend_click;
	frontList.onclick = list_click;
	backList.onclick = list_click;
	tech.onkeyup = tech_keyup;
}