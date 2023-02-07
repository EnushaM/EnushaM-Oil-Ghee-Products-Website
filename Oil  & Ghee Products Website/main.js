const navBtn=document.getElementById('nav-btn');
const cancelBtn=document.getElementById('cancel-btn');
const sideNav=document.getElementById('sidenav');
const modal=document.getElementById('modal');

const oilbtn=document.getElementById('oilbtn');
const gheebtn=document.getElementById('gheebtn');
const chekbtn=document.getElementById('chekbtn');
const sesbtn=document.getElementById('sesbtn');

navBtn.addEventListener("click",function(){
	sideNav.classList.add('show');
	modal.classList.add('showModal');
});

cancelBtn.addEventListener("click",function(){
	sideNav.classList.remove('show');
	modal.classList.remove('showModal');
});

windows.addEventListener('click',function(event){
	if(event.target===modal){
		sideNav.classList.remove('show');
		modal.classList.remove('showModal');		
	}
});

oilbtn.addEventListener("click",function(){
	oil.classList.add('oil');
	modal.classList.add('oilModal');
});

gheebtn.addEventListener("click",function(){
	ghee.classList.add('ghee');
	modal.classList.add('gheeModal');
});

chekbtn.addEventListener("click",function(){
	chekku.classList.add('chek');
	modal.classList.add('chekModal');
});

sesbtn.addEventListener("click",function(){
	ses.classList.add('ses');
	modal.classList.add('sesModal');
});