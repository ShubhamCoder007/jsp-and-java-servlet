<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

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




<body onLoad = "alert('Created by Shubham Banerjee')">

<h3>Week 2</h3>
<form id = "form1"  style="background-color:#90EE90" action = "getForm" method = "GET" onsubmit = "return checkForm(this)">

<br><br>
<b>First name &ensp;  <input type = "text" placeholder = "First Name" name = "firstname"> &ensp;&ensp;
<b>Last name &ensp; <input type = "text" placeholder = "Last Name" name = "lastname">
<br><br>
<b>Gender &ensp;&ensp;&ensp;
<input type = "radio" name = "gender" value="Male"> Male &ensp; &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<input type = "radio" name = "gender" value="female"> Female &ensp; &ensp;

<br><br><br>
<b> Branch &ensp;
<select name="Branch">
  <option></option>
  <option value="ECS">ECS</option>
  <option value="CSE">CSE</option>
  <option value="ETC">ETC</option>
  <option value="Mech">Mech</option>
</select>

<br><br>
<b>Mobile No. &ensp;
<input type = "text" placeholder = "908xxxxxxx" name = "mobileno">
<br><br>
<b>Email id &ensp;
<input type = "email" placeholder = "abc@xyz.com" name = "mail">
<br><br>

<b>Password &ensp;
<input type = "password" placeholder = "*******" name = "password">
<br><br>

<b>Address <br>
<textarea cols = "40" rows = "4" name = "address">
</textarea>
<br><br>

&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
<input type="submit" value="Submit">

</form>


</body>
</html>