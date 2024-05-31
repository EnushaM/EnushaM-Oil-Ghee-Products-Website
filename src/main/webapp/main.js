const navBtn=document.getElementById('nav-btn');
const sideNav=document.getElementById('sidenav');
const formnav = document.getElementById('formnav');
const lognav = document.getElementById('lognav');
const modal=document.getElementById('modal');

const oilbtn=document.getElementById('oilbtn');
const gheebtn=document.getElementById('gheebtn');
const chekbtn=document.getElementById('chekbtn');
const sesbtn=document.getElementById('sesbtn');

navBtn.addEventListener("click",function(){
	sideNav.classList.add('show');
	modal.classList.add('showModal');
});
const cancelButtons = document.querySelectorAll('.cancel-btn');

    cancelButtons.forEach(button => {
        button.addEventListener('click', function() {
            const targetId = this.getAttribute('data-target');
            const targetDiv = document.getElementById(targetId);	    	    targetDiv.classList.remove('show');
	    modal.classList.remove('showModal');		
        });
    });

window.addEventListener('click',function(event){
	if(event.target===modal){
		sideNav.classList.remove('show');
		modal.classList.remove('showModal');		
	}
});

const signUpButton = document.getElementById('signUpButton');
if (signUpButton) {
    signUpButton.addEventListener('click', function() {
        formnav.classList.add('show');
        modal.classList.add('showModal');
    });

}

const loginButton = document.getElementById('loginButton');
if (loginButton) {
    loginButton.addEventListener('click', function() {
        lognav.classList.add('show');
        modal.classList.add('showModal');
    });
}


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

function fun()
{
	const f=document.getElementsByClassName
} 