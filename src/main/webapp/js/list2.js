
class Technology {
	constructor() {
		
	}
	
	static btnAppend_click(e) {
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
	
	static list_click(e) {
		let li = e.target;
			li.remove();
	}
	
	static tech_keyup(e) {
		if (e.key == 'Enter')
		btnAppend.click();
	}
}

window.onload = function() {
	
	btnAppend.onclick = Technology.btnAppend_click;
	frontList.onclick = Technology.list_click;
	backList.onclick = Technology.list_click;
	tech.onkeyup = Technology.tech_keyup;
}