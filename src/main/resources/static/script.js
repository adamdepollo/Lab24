document.getElementById("register").addEventListener("click", function(event){
	if (document.getElementById('password').value !== document.getElementById('confirmPassword').value) {
		event.preventDefault();
		document.getElementById('passWarn').style.display = "inherit";
	} else {document.getElementById('thanksForRegistering').style.display = "inherit";
	document.getElementById('registrationForm').style.display = "none";}
	
});