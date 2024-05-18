/**
 * 
 */
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