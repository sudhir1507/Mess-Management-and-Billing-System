
function nameValidate(str) {

	let pattern = /^[a-zA-Z]+$/g;
	let result = str.match(pattern);
	//document.getElementById("sn").innerHTM = result;
	let spanElement=document.getElementById("sn");
	if (result != null) {
		
		spanElement.innerHTML = "";
	}
	else {
		spanElement.innerHTML = "invalid name";
		spanElement.style.backgroundColor = "white";
		spanElement.style.color = "red";
		spanElement.style.fontSize="16px";
	}
}
function mealValidate(str) {

	let patterns = /[a-zA-Z]+/g;
	let results = str.match(patterns);
	//document.getElementById("sn").innerHTM = result;
	let spanElement=document.getElementById("mealid");
	if (results != null) {
		
		spanElement.innerHTML = "";
	}
	else {
		spanElement.innerHTML = "Invalid Meal Time";
		spanElement.style.backgroundColor = "white";
		spanElement.style.color = "red";
		spanElement.style.fontSize="16px";
	}
}



function validateEmail() {
    let str = document.getElementById("username").value;
    let pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/g; 
    let result = pattern.test(str); 
    let spanElement = document.getElementById("emailid");
    
    if (result) {
        spanElement.innerHTML = "";
    } else {
        spanElement.innerHTML = "Invalid Email";
        spanElement.style.backgroundColor = "white";
        spanElement.style.color = "red";
        spanElement.style.fontSize = "16px";
    }
}

function checkPassword() {
    let str = document.getElementById("password").value;
    let pattern = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@$#%^&*])(.{8,})/;
    let result = pattern.test(str);
    let span = document.getElementById("passwordid");
    
    if (result) {
        span.innerHTML = "";
       
    } else {
        span.innerHTML = "Invalid Password";
        span.style.backgroundColor = "white";
        span.style.color = "red";
        span.style.fontSize = "16px";
    }  
}

   
function validateFees(str){
	let pattern= /^[0-9]/g ;
	let result=str.match(pattern);
	let spanElement=document.getElementById("fee");
	if (result != null) {
		
		spanElement.innerHTML = "";
	}
	else {
		spanElement.innerHTML = "invalid fees";
		spanElement.style.backgroundColor = "white";
		spanElement.style.color = "red";
		spanElement.style.fontSize="16px";
	}
	
}

