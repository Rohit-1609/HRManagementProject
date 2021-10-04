<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Registration form of HR management at Nabla Infotech</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
 <!--<link rel="stylesheet" href="../resources/style.css"> -->
<link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css">
<style>
.button {
  background-color:#97c430;
  border-radius: 1px; 
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  width: 100px;
  padding: 10px 5px;
  margin: 10px 5px;
  cursor: pointer;
}
</style>
</head>
<body>
<!-- partial:index.partial.html -->
<!-- multistep form -->
<form action="register_process" method="post" id="msform">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Login Details</li>
    <li >Employee Details</li>
    <li>Personal Details</li>
    <li>Educational Details</li>
    
  </ul>
  
  <!-- fieldsets -->
  <fieldset>
    <legend>Create your account</legend>
  <br>
  <br>
  <br>
  
  
  <table class="registrationtable" cellpadding="2" width="100%" bgcolor="#9999FF" align="center" cellspacing="2">
    
  
		<tr>
   <td> ID</td>
	<td><input type="text" name="Id" placeholder="Id" id="id" />
        <span id="span3"><b>This field can't be Empty</b></span></td>
	</tr>
	
	
	<tr>
    <td><label> Office Email :-</label>
        
        </td>
	<td><input type="text" name="email" placeholder="Email" id="email" />
        <span id="span1"><b>Enter a valid email address</b></span>
        <span id="span2"><b>This field can't be empty</b></span>
        <span class="red-text accent-4" id="result"></span> 
        </td>
	</tr>
      
    <tr>
        <td><label>Full Name</label></td>
        <td><input type="text" name="fullName" placeholder="Full Name" id="fullName"/>
            <span id="span15"><b>This field can't be empty</b></span></td>
        </tr>

	
	<tr>
    <td>Password :-</td>
	<td><input type="password" name="password" placeholder="Password" id="password" />
        <span id="span3"><b>This field can't be empty</b></span></td>
	</tr>
	
	<tr>
    <td>Confirm Password :-</td>
	<td><input type="password" name="confirmPassword" placeholder="Confirm Password"  id="confirmPassword"/>
        <span id="span4"><b>Password doesn't match</b> </span>
	</tr>
	
	<tr>
					<td><label for="role">Role:</label></td>
					    <td><select name="role" id="inputbox">
						<option value="" selected disabled hidden>Select
							Employee/Admin</option>
						<option value="Admin"><p style="font-family: courier;">Admin</p>
						</option>
						<option value="Employee"><p style="font-family: courier;">Employee</p>
						</option>
                        
					</select></td>
				</tr>
	
	</table>
    <br>
    <br>
    <br>
  <input type="button" name="next" class="next action-button" value="Next" />
 <a href="${pageContext.request.contextPath }/" 
                           class="next action-button">Login Page</a> 
 </fieldset>

 <fieldset>
    <legend> Employee Details</legend>
	<br>
    <br>
	<br>
	<table class="registrationtable" cellpadding="2" width="100%" bgcolor="#FF99FF" align="center" cellspacing="2">
	
        <tr>
            <td><label>Employee ID:-:- </label></td>
            <td><input type="text" name="employeeId" id="employeeId">
                <span id="span9"><b>Enter a valid employee Id</b></span>
                <span id="span10"><b>This field can't be empty</b></span>
                </td>
            </tr>

        <tr>
            <td><label>Year of experience in our organisation </label></td>
            <td><select id="inpbox" name="yearOfExperienceInOurOrganisation">
           <option value="1 Year" selected>1 Year</option>
           <option value="2 Year">2 Year</option>
           <option value="3 Year">3 Year</option>
           <option value="4 Year">4 Year</option>
           <option value="5 year">5 Year</option>
           <option value="6 year">6 Year</option>
           <option value="Fresher">Fresher</option>
           </select></td>
            </tr>
	
            <tr>
                <td><label>Position </label></td>
                <td><select id="inpbox" name="position">
               <option value="Developer" selected>Developer</option>
               <option value="Tester">Tester</option>
               <option value="Manager">Manager</option>
               <option value="HR">HR</option>
               <option value="QA">QA</option>
               <option value="BA">BA</option>
               </select></td>
                </tr>
	
                <tr>
                    <td><label>Skills :-</label></td>
                    <td><input type="text" name="skills" id="skills" />
                        <span id="span13"><b>This field can't be empty</b></span></td>
                    </tr>

                <tr>
                    <td><label>Year of experience in previous organisation </label></td>
                    <td><select id="inpbox" name="yearOfExperienceInPreviousOrganisation">
                   <option value="1 Year" selected>1 Year</option>
                   <option value="2 Year">2 Year</option>
                   <option value="3 Year">3 Year</option>
                   <option value="4 Year">4 Year</option>
                   <option value="5 year">5 Year</option>
                   <option value="6 year">6 Year</option>
                   <option value="Fresher">Fresher</option>
                   </select></td>
                    </tr>
            
                    <tr>
                        <td><label>Position in previous organisation</label></td>
                        <td><select id="inpbox" name="positionInPreviousOrganisation">
                       <option value="Developer" selected>Developer</option>
                       <option value="Tester">Tester</option>
                       <option value="Manager">Manager</option>
                       <option value="HR">HR</option>
                       <option value="QA">QA</option>
                       <option value="BA">BA</option>
                       </select></td>
                        </tr>
 
                        
             
	
	</table>
    <br>
    <br>
    <br>
	
    <input type="button" name="previous" class="previous action-button" value="Previous" />
 <a href="${pageContext.request.contextPath }/"
							class="next action-button">Login Page</a>
   <input type="button" name="next" class="next action-button" value="Next" />

  </fieldset>
  


  <fieldset>
    
	<br>
    <br>
	<br>
    <legend>Personal Details</legend>
	<table class="registrationtable" cellpadding="2" width="100%" bgcolor="#FFFF33" align="center" cellspacing="2">
	
	<tr>
    <td><label>Personal E-mail:- </label></td>
	<td><input type="text" name="personalEmail" id="personalEmail">
        <span id="span7"><b>Enter a valid email address</b></span>
        <span id="span8"><b>This field can't be empty</b></span>
        </td>
	</tr>

    <tr>
        <td><label>Phone Number </label></td>
        <td><input type="text" name="mobile" pattern="[7-9]{1}[0-9]{9}" 
           title="Phone number with 7-9 and remaing 9 digit with 0-9" id="phonenumber">
            <span id="span5"><b>Enter a Valid Mobile Address</b></span>
            <span id="span6"><b>This field can't be Empty</b></span>
            </td>
        </tr>

        <tr>
            <td><label>Permanent Address :- </label></td>
            <td><input type="text" name="permanentAddress" id="permanentAddress" />
                <span id="span9"><b>This field can't be empty</b></span></td>
            </tr>
        
            <tr>
            <td><label> permanent address City :-</label></td>
            <td><input type="text" name="permanentCity" id="permanentCity">
                <span id="span10"><b>This field can't be Empty</b></span></td>
            </tr>
            <tr>
                <td><label>Current Address :-  </label></td>
                <td><input type="text" name="currentAddress" id="currentAddress" />
                    <span id="span50"><b>This field can't be empty</b></span></td>
                </tr>
                </tr>
                <tr>
                    <td><label>Current address City :-</label></td>
                    <td><input type="text" name="currentCity" id="currentCity">
                        <span id="span51"><b>This field can't be Empty</b></span></td>
                    </tr>  
        
            <tr>
            <td><label>State </label></td>
            <td><input type="text" name="state" placeholder="state"  id="state">
                <span id="span11"><b>This field can't be empty</b></span></td>
               
            </tr>
            
            <tr>
            <td><label>Postal / Zip Code</label></td>
            <td><input type="text" name="zipCode" placeholder="Postal / Zip Code" id="zipCode">
                <span id="span12"><b>This field can't be empty</b></span></td>
            </tr>
            
            <tr>
            <td><label>Country </label></td>
            <td><select id="inpbox" name="country">
           <option value="India" selected>INDIA</option>
           <option value="Usa">USA</option>
           <option value="Srilanka">SRILANKA</option>
           <option value="Bangladesh">BANGLADESH</option>
           <option value="Germany">GERMANY</option>
           <option value="Japan">JAPAN</option>
           </select></td>
            </tr>
	
	</table>
    <br>
    <br>
    <br>
    
    <input type="button" name="previous" class="previous action-button" value="Previous" />
 <a href="${pageContext.request.contextPath }/"
							class="next action-button">Login Page</a> 
	    <input type="button" name="next" class="next action-button" value="Next" />

  </fieldset>
  
  <fieldset>
    <legend>Educational Details</legend>
	<br><br>
	
	<table class="registrationtable" cellpadding="2" width="100%" bgcolor="c0de2c" align="center" cellspacing="2">
    
	<tr>
    <td><label>School Name :-</label></td>
	<td><input type="text" name="schoolName" id="schoolName" />
        <span id="span13"><b>This field can't be empty</b></span></td>
	</tr>
	
    <tr>
        <td><label>10th percentage:-</label></td>
        <td><input type="text" name="tenthPercentage" id="tenthPercentage" />
            <span id="span13"><b>This field can't be empty</b></span></td>
        </tr>
	<tr>
    <td><label>Year of 10th passout</label></td>
	<td><select id="inpbox" name="tenthPassout">
    <option value="" selected="selected" disabled="disabled">  -- Year --  </option>
    <option value="2016">2016</option>
    <option value="2015">2015</option>
    <option value="2014">2014</option>
	<option value="2014">2013</option>
	<option value="2014">2012</option>
	<option value="2014">2011</option>
	<option value="2014">2010</option>
  </select></td>
	</tr>
	
	
	<tr>
    <td><label>High School/College Name </label></td>
	<td><input type="text" name="collegeName" id="collegeName" /><span id="span14"><b>This field can't be Empty</b></span></td>
	</tr>
	
    <tr>
        <td><label>12th percentage:-</label></td>
        <td><input type="text" name="twelthPercentage" id="twelthPercentage" />
            <span id="span13"><b>This field can't be empty</b></span></td>
        </tr>
	<tr>

	<tr>
    <td><label>Year of 12th passout</label></td>
	<td><select id="inpbox" name="twelthPassout">
    <option value="" selected="selected" disabled="disabled">  -- Year --  </option>
    <option value="2020">2020</option>
    <option value="2019">2019</option>
    <option value="2018">2018</option>
    <option value="2017">2017</option>
    <option value="2016">2016</option>
    <option value="2015">2015</option>
    <option value="2014">2014</option>
  </select></td>
	</tr>
	
	
	<tr>
    <td><label>Select Qualification </label></td>
	<td><select id="inpbox" name="qualification">
	<option value="" selected="selected" disabled="disabled">  -- select one --  </option>
    <option value="graduate">Graduate</option>
    <option value="post-graduate">Post-Graduate</option>
    <option value="PHD">PHD</option>
	</select></td>
	</tr>
	
	
	<tr>
    <td><label>Select Degree </label></td>
	<td><select id="inpbox" name="degree">
    <option value="" selected="selected" disabled="disabled">  -- select one --  </option>
    <option value="Bsc">Bsc</option>
    <option value="Bcom">Bcom</option>
    <option value="Btech">Btech</option>
    <option value="MBA">MBA</option>
    <option value="Bachelor's degree">Bachelor's degree</option>
    <option value="Master's degree">Master's degree</option>
    <option value="Doctorate or higher">Doctorate or higher</option>
  </select></td>
	</tr>
  
    <tr>
    <td><label>Year of Degree passout </label></td>
	<td><select id="inpbox" name="degreePassout">
    <option value="" selected="selected" disabled="disabled">   -- Year --  </option>
    <option value="2020">2020</option>
    <option value="2019">2019</option>
    <option value="2018">2018</option>
    <option value="2017">2017</option>
    <option value="2016">2016</option>
    <option value="2015">2015</option>
    <option value="2014">2014</option>
	<option value="2016">2013</option>
    <option value="2015">2012</option>
    <option value="2014">2011</option>
  </select></td>
	</tr>

    <tr>
        <td><label>Degree percentage:-</label></td>
        <td><input type="text" name="degreePercentage" id="degreePercentage" />
            <span id="span13"><b>This field can't be empty</b></span></td>
        </tr>
	
	</table>
    <br>
    <br>
    <br>
    <input type="button" name="previous" class="previous action-button" value="Previous" />
 <a href="${pageContext.request.contextPath }/"
							class="next action-button">Login Page</a>
	   <button class="action-button" >Register</button>
  </fieldset>
</form>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script  src="<c:url value= " ./resources/script.js" />"> </script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="<c:url value= " ./resources/validation.js" />"> </script> 

<script>
    $(document).ready(function(){
     $('email').change(function(){
         var emailval = $('#email').val();
		 
		 $.ajax({
		     type:'POST',
			 data:{emailval:email},
			 url:'ValueExistCheck',
			 success: function(result){
			     $('#result').html(result);
			 }
		 });
     });   
    });
    
</script>>

</body>
</html>
