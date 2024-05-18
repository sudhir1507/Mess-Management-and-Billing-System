/**
 * 
 */
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

function contactValidate(str) {

	let pattern=/^[0-9]+$/g
      let result=str.match(pattern);

	let spanElement=document.getElementById("contactid");
	if(result!=null && str.length==10){
		
		spanElement.innerHTML = "";
	}
	else {
		spanElement.innerHTML = "Invalid Contact";
		spanElement.style.backgroundColor = "white";
		spanElement.style.color = "red";
		spanElement.style.fontSize="16px";
	}
}

   function checkPassword(){
      let str=document.getElementById("password").value;
      let pattern=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@$#%^&*])(.{8,})/g;
      let result=str.match(pattern);
      if(result!=null){
         let span=document.getElementById("passwordid");
         span.innerHTML="Valid password";
         span.style.backgroundColor="white";
         span.style.color="green";
         span.style.fontSize="16px";
         
      }
      else{
         let span=document.getElementById("passwordid");
         span.innerHTML="Invalid Password";
         span.style.backgroundColor="white";
         span.style.color="red";
		 span.style.fontSize="16px";
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
		spanElement.innerHTML = "Invalid Email";
		spanElement.style.backgroundColor = "white";
		spanElement.style.color = "red";
		spanElement.style.fontSize="16px";
	}
	
}
