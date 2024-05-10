
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

function validateEmail(str){
	let pattern= /^[a-z0-9.-_]+@[a-z0-9.-_]+\.[a-z]{2,3}$/g ;
	let result=str.match(pattern);
	let spanElement=document.getElementById("eid");
	if (result != null) {
		
		spanElement.innerHTML = "";
	}
	else {
		spanElement.innerHTML = "invalid Email";
		spanElement.style.backgroundColor = "white";
		spanElement.style.color = "red";
		spanElement.style.fontSize="16px";
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

