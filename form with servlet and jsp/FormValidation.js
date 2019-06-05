<script type="text/javascript">
function checkForm(form){
	
    if (form.firstname.value == "") {                                  
        alert("Please enter your first name"); 
        form.firstname.focus(); 
        return false; 
    } 
    
    if (form.lastname.value == "") {                                  
        alert("Please enter your last name"); 
        form.lastname.focus(); 
        return false; 
    } 
   
    if (form.address.value == "")   {                            
        alert("Please enter your address"); 
        form.address.focus(); 
        return false; 
    } 
       
    if (form.mail.value == "")   {                                 
        alert("Please enter a valid e-mail address."); 
        form.mail.focus(); 
        return false; 
    } 
   
    if (form.mail.value.indexOf("@", 0) < 0)  {               
        alert("Please enter a valid e-mail address"); 
        form.mail.focus(); 
        return false; 
    } 
   
    if (form.mail.value.indexOf(".", 0) < 0)  {               
        alert("Please enter a valid e-mail address."); 
        form.mail.focus(); 
        return false; 
    } 
   
    if (form.mob.value == "") {                          
        alert("Please enter your telephone number."); 
        form.mob.focus(); 
        return false; 
    } 
   
    if (form.password.value == "") {                       
        alert("Please enter your password"); 
        form.password.focus(); 
        return false; 
    } 
   
    if (form.branch.selectedIndex < 1)  {                
        alert("Please enter your course."); 
        form.branch.focus(); 
        return false; 
    } 
   
    
	fnexp = /^\q+z+$/;
	if(!exp.test(form.firstname.value)){
		alert("Error! name must be characters");
		form.firstname.focus();
		return false;
	}
	
	if(form.lastname.value.length < 6){
		alert("Error! lastname cannot be blank!");
		form.lastname.focus();
		return false;
	}
	
	if(form.Branch.value == ""){
		alert("Error! Branch cannot be blank!");
		form.firstname.focus();
		return false;
	}
	if(form.mobileno.value == ""){
		alert("Error! mobile number cannot be blank!");
		form.firstname.focus();
		return false;
	}
	if(form.password.value.length < 7){
		alert("password must be atleast 6 characters!");
		form.firstname.focus();
		return false;
	}
	
	return true;
}
</script>