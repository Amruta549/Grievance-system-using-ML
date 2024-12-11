
<!DOCTYPE html>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>




<head>

 
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-control" content="no-cache, no-store, must-revalidate">
	<meta http-equiv="Pragma" content="no-cache">
 <c:set var="context" value="${pageContext.request.contextPath}" />
 <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css"  href="${context}/resources/css/style.css">    
<title>DigitalGovernace</title>

    <script type="text/javascript"  src="${context}/resources/js/jquery-3.4.1.min.js"></script> 

  <script type="text/javascript" 	src="${context}/resources/js/jquery.validate_1.19.1.min.js"/></script>  

	    
	   

<style>
.Login {
    background:  url(/V_Aadhar_Portal/resources/images/bg1.png);
    height: 562px;
    width: 457px;
    margin-right: 795px;
    margin-left: 795px;
    margin-top: 190px;
    border-radius: 65px;
        font-family: "Open Sans", Arial, Helvetica, sans-serif;
    font-size: 14px;
    font-weight: 400
 
}
#loginVal{
padding-top: 262px;
}
input {
    background: transparent;
    border: none;
      border-bottom: 1px solid #f5f1f1;
    width: 300px;
   
          font-size: 23px;
    color: white;
    padding-left: 81px;
        
}

#EmailId {
    background-image: url(/V_Aadhar_Portal/resources/images/email.png);
    background-repeat: no-repeat;
    height: 32px;
    background-size: 31px;
}
img{
    width: 36px;
    margin-left: 37px;
    margin-top: -1px;
}
#password{
    margin-left: -38px;
    height: 32px;
}

  #remember{
    margin-top: 7px;
    }
    #remember-me{
    
        margin-left: -104px;
    
    }
    #rem{
        margin-left: -140px;
            color: white;
    }
    label{
    color:red;
    margin-left:110px;
    font-size: 18px;
    }
       a{ 
       margin-left: 91px;
           color: white;
       }
       
         button {
    margin-left: 45px;
    margin-top: 35px;
    width: 364px;
    height: 35px;
    border-radius: 10px;
    color: #f5e6e6;
    background-color: #6A359C;
    border-color: #6A359C;
} 
/* pw-style{
  background-image: url(/V_Aadhar_Portal/resources/images/bg1.png);
} */
::placeholder {
  color: white;
/*    padding-left:65px;
 */  }
</style>
</head>
<body>
	
 <div class="Login">


<%-- <c:if test="${loginResponse.status eq 'success'}">
	<p><br/></p>
	<div class="col-sm-6 col-sm-offset-3 alert alert-success alert-dismissible fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> ${loginResponse.errormessage}.
  </div>
  </c:if>
  
  <c:if test="${loginResponse.status eq 'failure'}">
	<p><br/></p>
	<div class="col-sm-6 col-sm-offset-3 alert alert-danger alert-dismissible fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Failure!</strong> ${loginResponse.errormessage}.
  </div>
   </c:if> --%>
<div class="container-fluid">
    <form id="loginVal" action="login" method="POST"   modelAttribute="loginAttribute" novalidate="novalidate">
    <div class="container">
  <div class="row">
<div class="col-12" >	
    <input id="EmailId" name="EmailId" class="w-100 bg-none" placeholder="Email ID" class="form-control valid" type="text" value="" autocomplete="off" aria-required="true" aria-invalid="false" >
    </div>
  </div>
  </div>
      <div class="container">
  <div class="row">
<div class="col-6" >

        <img src="${context}/resources/images/Security lock.png"> 
<input id="password" name="userPassword"  class="pw-style" placeholder="Password" class="form-control valid" type="password" value="" aria-required="true" aria-invalid="false" >
 </div>
</div>
  </div>
  <div class=" col-2" id="remember">
								 <input type="checkbox" id="remember-me" name="remember-me" ><label for="remember-me" id="rem" class="text-info">Remember me &nbsp;&nbsp;&nbsp;&nbsp;�</label> 
								
                            <a href="#" class="ForgetPwd">Forget Password?</a>
                       </div>
                       <div class="col-8 mx-auto">
								 <button type="submit" class="btn btn-orange btn-block" id="login" value="LOGIN" autocomplete="off">LOGIN</button>
		                </div>
		                <div class="row">
		                
		               
		                		<label style="color: red" id="msgPopUp">${loginResponse.message}</label>
		                				<label style="color: red;    margin-left: 20px" id="msgPopUp">${basicDetails.message}</label>
		                </div>
		                
</form>
   </div>
</div>
<script>
$(document).ready(function(){

	$("#loginVal").validate({
	   rules: {
		   EmailId : { 
		   required : true,
		   email : true
	   },
	   userPassword : {
			required : true
		}
	},
	   messages: {
		   EmailId : {
				required : "please select any option",
			email : "Please enter valid email id"
			},
			userPassword : {
				required : "please select any option"
			}
			
	 
	}
	})

$('#login').on('click', function() {
$('#loginVal').valid();

});
});
</script>

</body>
</html>