
class Technology {
	tech = null;
	
	constructor() {
		this.tech = document.querySelector('#tech');
		this.fron = document.querySelector('#front');
		this.back = document.querySelector('#back');
		this.btnAppend = document.querySelector('#btnAppend');
		this.frontList = document.querySelector('#frontList');
		this.backList = document.querySelector('#backList');
	}
	
	btnAppend_click(e) {
		if (this.tech.value.trim() == '') {
			this.tech.value='';
			return;
		}
	
		let li = document.createElement('li');
		li.innerText = this.tech.value.trim();
	
		if (front.checked)
			this.frontList.append(li);
		else
			this.backList.append(li);
	
	
		this.tech.value = '';
		this.tech.focus();
	}
	
	list_click(e) {
		let li = e.target;
			li.remove();
	}
	
	tech_keyup(e) {
		if (e.key == 'Enter')
		this.btnAppend.click();
	}
	
}

window.onload = function() {
	let t = new Technology();
	
	btnAppend.onclick = e => t.btnAppend_click(e);
	frontList.onclick = e => t.list_click(e);
	backList.onclick =  e => t.list_click(e);
	tech.onkeyup = 		e => t.tech_keyup(e);
}