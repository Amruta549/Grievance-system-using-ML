
<!DOCTYPE html>

<%@ page isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>

<c:set var="context" value="${pageContext.request.contextPath}" />

<meta name='viewport' content='width=device-width, initial-scale=1'>

   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"> 
   
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script> 
  
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script> 
   
   <link href="font-awesome.min.css" rel="stylesheet" type="text/css">
   
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" />
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 
<link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet" type="text/css" />

 <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
 
  <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


   <style>
   
    .leftside,.rightside{
  height:50vh;
 
  }
  .leftside{
background-color: white;
    width: 100%;
    border-radius: 12px;
    border: 1px solid  #f1f3f5;
}
  
  .rightside{
    background-color: #f1f3f5;
    width: 100%;
  }
    @media screen and (min-width:50px){
 .rightside,.leftside{
   height:100vh;
 
  } 
 #dashboard{
     margin-top: 238px;
    margin-left: 11px;
 
 
 } 
  .play{
      width: 28px;
    margin-left: 4px;
    height: 28px;
    margin-top: -19px;
}
  
  .overlay-text{
  
  margin-left: 9px;
   
    font-size: 20px;
    font-weight: bold;
  
  
  }   
  a {
    color: #140303;
    } 
   
    
    
    
    #usermanagement1{
    
    background-color: #f1f3f5;
    margin-top: 28px;
   
    height: 70px;
    margin-right: -4px;
    margin-left: -32px;
}
   #usermanagement{
   margin-top: 22px;
   }
   .play1{
   width: 33px;
    height: 30px;
    margin-top: -13px;
       margin-left: 20px;
}
   }
   
   .overlay-text1{
   margin-left: 4px;
    font-size: 20px;
    font-weight: bold;
    }
h4{

    font-weight: bold;
margin-top: 30px;
margin-left: 53px;
}
#navbar{

 
background: url(/V_Aadhar_Portal/resources/images/bgstrip.png);
  
   
    background-repeat: no-repeat;
    margin-left: 20px;
           height: 130px;
  
    background-size: cover;
    width: 98%;
}

#navbar{
    margin-left: 7px;
width:100%;
}
#userimage{
    margin-left: 20px;
   
    height: 95px;
}

#userimage1{
    width: 38px;
 
    }
    
    #space{
        margin-top: 13px;
        margin-left: 17px;
    }
   /*  .text-left{
        color: white;
    font-size: 24px;
    margin-right: 543px;
    margin-top: -48px;
    
    } */
     #space1{
      margin-left: 16px;
    }
    
   #search{
   
    background-color: white;
    height: 600px;  
    }
    #sendLink{
    
        background-color: white;
    margin-left: 35px;
    height: 484px;
    max-width: 21%;
    }
    #reg{
    
        font-weight: bold;
    margin-top: 30px;
    
    }
    
    #admin{
    width: 140px;
    background-color: #8e8ee7;
    
    height: 50px;
    }
    #employee{
    width: 140px;
   
    background-color: white;
    color: black;
    }
    #first{
    margin-left: 4px;
    margin-top: 25px;
        width: 322px;
}
    
    .form-control {  
       width: 85%;
    height: 50px;
    }
    #sel1{
    height: 52px;
    width: 86%;
    border-radius: 6px;
    border: 1px solid #ced4da;
    }
       .btn-sm {
        height: 47px;
    width: 89%;
    border-radius: 6px;
    margin-left: -2px;
    background-color: #59b392;
    color: white;
    }
    
    #byName{
    
    margin-top: 30px;
    }
    #t1{
      margin-top: 30px;
    }
   .fa-search{
   margin-left: -28px;
   } 
   #msgPopUp{
   margin-left: 100px;
   }
   
   #msgPopUp1{   
    margin-left: 33px;
    color: green;
    margin-top: 9px;
    font-size: 17px;
    }
    
        #adminName{
        color: white;
   
     margin-top: -10px;
    font-size: 37px;
    }
  #header{
  margin-top: 20px;
  }
  #userType{
  color: white;
    margin-left: 8px;
    font-size: 25px;
  }
  #logout{
  MARGIN-LEFT: 55PX;
    margin-top: 32px;
    color: white;
    font-size: 20px;
    }
    
  .table {
    width: 142%;
    margin-bottom: 1rem;
    color: #212529;
}

 
 /* .table {
    width: 140%;
} */
 /*  #d2{
  padding-right: 0px;
    padding-left: 0px;
  }  */
  
      #dailyTask{
       margin-right: 19px;
    margin-left: -30px;
    } 
    
    #searchByKeyWord{ 
   margin-left: 0px;
    margin-top: 20px;
   font-weight: bold;
}

   #fromdate{
    margin-top: 20px;
    margin-left: 0px;
}


.btn-info{
background-color: white;
    border-color: white;
    color: black;
}

#table{

    width: 101%;
    margin-bottom: 1rem;
    color: #212529;
    }
    
       .modal-content{
        width: 1074px;
margin-left: -272px;
    }
    #table{
        width: 101%;
    }
    
   </style>
</head>
<body>

<div class="row  no-gutters">
<div class="col-md-2  no-gutters">
<div class="leftside">
<div class="container-fluid" id="dashboard">



<div class="row" id="usermanagement1" >
 <a href="${context}/" > 
 <div class="col-sm-12" id="usermanagement" ><img class="play1 img-fluid" src="/V_Aadhar_Portal/resources/images/daily status.png"><span class="overlay-text1">Daily Task</span></div> </a> 


</div>
</div>


</div>
</div>

 <div class="col-md-10  no-gutters">
<div class="rightside">
<div class="container-fluid">
 <div class="row " >
   <div class="col-sm-4" ></div>
    <div class="col-sm-4" ><h4>vAadhaar Governance</h4></div>
    
    <div class="col-sm-4"></div>
    </div>
  
<div id="navbar">

<div class="row"></div>
<div class="row" id="header" >
<div class="col-1">
<img src="${context}/resources/images/user.png"  id="userimage"> 
</div>
<div class="col-9">
<h1 id="adminName" >${agentDetailsResponse.basicDetails.fullName}</h1>
<label id="userType">${agentType.userTypes.userTypeName}</label>
</div>
    <div class="col-2" id="logOutdisable">

<label id="logout">LOG OUT</label>
<a href="${context}/" class="logout-navigation" style="margin-left:6px;"> <img src="${context}/resources/images/Logout.png" class=" navbar-right" id="userimage1"></a>

    </div>
    </div>
</div>
<div class="row" id="searchByKeyWord">
<div class="col-sm-4">Search By KeyWord:  <input type="search" id="gsearch" name="gsearch" >
        <button type="button" id="searchButton" onclick="searchByEmpIdAndSatationId();">Search</button></div>
</div>
<div class="row" id="fromdate">
<div class="col-sm-3">

<label>From Date:</label>
<input type="text" name="fromDate" placeholder="From date"
										id="fromDate"  />

</div>
<div class="col-sm-3">
<label>To Date:</label>
<input type="text" placeholder="To date " name="toDate"
										id="toDate"  />
</div>

<div class="col-sm-3">
<label>Select State:</label>
<select class="form-select" aria-label="Default select example" id="state">
  <option selected>--select state--</option>
      <c:forEach var="stateList" items="${stateList.statesList}">
	        <option value="${stateList.stateDbId}">${stateList.stateName}</option>
	        </c:forEach>
</select>
</div>
<div class="col-sm-3">
 <button type="button" id="searchButton" onclick="searchByDateAndState();">SearchByDateAndState</button></div>
</div>
</div>

<div class="row" id="space">
   <div class="col-sm-7 " id="search">
   <div class="row" id="dailyTask">
   <div class="col-sm-9">
   
  <table class="table"  id="table1">
  <thead>
    <tr>
     				
												

												<th>Employee ID</th>
												<th>Verifier Name</th>
												<th>Station ID</th>
												<th>Info</th>
												
    </tr>
  </thead>
<c:forEach  var="dashboardList"  items="${dashboardList.dashboardList}"> 
  <tbody>
  <tr>
  <td>${dashboardList.operatorId}</td>                                                    
  <td>${dashboardList.verifierName}</td>
  <td>${dashboardList.stationId}</td>
  <td> <button type="button" class="btn btn-info"  onclick="myFunction(`${dashboardList.loginDbId}`)"  data-toggle="modal" data-target="#exampleModal" ><i class="fa fa-info-circle" aria-hidden="true"></i></button></td>
 

  
  </tr>
 
</tbody>
  </c:forEach>
     
</table>



    </div>
      <table class="table" id="table2">
  <thead>
    <tr>
     				
												

												<th>Employee ID</th>
												<th>Verifier Name</th>
												<th>Station ID</th>
												<th>Info</th>
												
    </tr>
  </thead>

  <tbody id="tb2">
 
</tbody>
</table>
   </div>
   </div>
</div>
</div>


</div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">vAadhaar Governance</h5><br>
        <h5 class="modal-title" id="employeeId"></h5>
      
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <table class="table" id="table">
  <thead>
    <tr>
      <th scope="col">Date</th>
      <th scope="col">Login Time</th>
      <th scope="col">LogOut Time</th>
      <th scope="col">Type</th>
      <th scope="col">EOD</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody id="tbl">
 <tr id="noExl">
 </tr>
  
  </tbody >
</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <input type="button" id="btnExport" value="Export" />
      
      </div>
    </div>
  </div>
</div>





<script>
function searchByEmpIdAndSatationId(){
	 $("#table1").hide();
	 $("#table2").show();
	   alert("search");
	   var operatorId = $('#gsearch').val();
	   alert(operatorId);
	   
	   $
		.ajax({
			url : "${context}/getListByOperatorId",
			type : "POST",
			data : {
				operatorId : operatorId
				},
				error : function(exception) {
				window.alert("Exception---:" + exception);
			},
			success : function(result) {

				if (result.status == "Success") {
					alert("rs");
				var searchByOpertorId=	result.dashboardList;
				alert(searchByOpertorId);
				$.each(searchByOpertorId, function (key, value) { 
					
					
					let tabledata="<tr>"
					+"<td>"+value.operatorId+"</td>"
					+"<td>"+value.verifierName+"</td>"
					+"<td>"+value.stationId+"</td>"
					/* +"<td>'<button type='button' class='btn btn-info'  onclick="myFunction(`${dashboardList.loginDbId}`)"  data-toggle='modal' data-target='#exampleModal' ><i class='fa fa-info-circle' aria-hidden='true'></i></button>'</td>" */
					+"</tr>";
					table=table+tabledata;
					$("#tb2").append(table);
	
				}) 
				
					
				
				}
		}
	   
	   
	   
});
}

$( function() {
	$("#table2").hide();
 
  	$("#fromDate").datepicker({ 
 		 changeMonth: true,
        changeYear: true,
		 dateFormat: 'yy-dd-mm',
		
        onSelect: function (date) {
           var dt2 = $('#toDate');
           var minDate = $(this).datepicker('getDate');
           dt2.datepicker('option', 'minDate', minDate);
       }
   }).datepicker('setDate',new Date());
	$("#toDate").datepicker({ 
		dateFormat: 'yy-dd-mm',
		changeMonth: true,
       changeYear: true
   }).datepicker('setDate',new Date()); 
});
 function myFunction(loginDbId){
	  
	
	 var loginDbId=loginDbId;
	alert(loginDbId);
	 
	
	$
	.ajax({
		url : "${context}/getListById",
		type : "POST",
		data : {
			loginDbId : loginDbId
			},
			error : function(exception) {
			window.alert("Exception---:" + exception);
		},
		success : function(result) {

			if (result.status == "Success") {
				alert("rs");
				
				var DailyTaskInfoDashboardList=result.dailyTaskInfoDashboard;
				//var list=DailyTaskInfoDashboardList[0];
				//$('#employeeId').append(list.operatorId);
		
						
						
						
						
							$.each(DailyTaskInfoDashboardList, function (key, value) { 
								
									
							let tabledata="<tr>"
							+"<td>"+value.loginDate+"</td>"
							+"<td>"+value.loginTime+"</td>"
							+"<td>"+value.logOutTime+"</td>"
							+"<td>"+value.uploadType+"</td>"
							+"<td>"+value.eodFile+"</td>"
							+"<td><a href= "+ value.eodFile+ " target='_blank' download>Download</a></td>"
							+"</tr>";
							table=table+tabledata;
							$("#tbl").append(table);
			
						}) 
}
		}
		
	});

 }
 
 
 
 function searchByDateAndState(){
	  alert("searchByDateAndState");
	   var fromDate = $('#fromDate').val();
		 var toDate = $('#toDate').val(); 
		 var state=$('#state option:selected').val();
		 
	 	 alert(fromDate);
	  alert(toDate); 
	  alert(state);
	  
	   $
		.ajax({
			url : "${context}/searchListByDateAndState",
			type : "POST",
			data : {
				 fromDate : fromDate,
				toDate:toDate,
				state:state
				},
				error : function(exception) {
				window.alert("Exception---:" + exception);
			},
			success : function(result) {

				if (result.status == "Success") {
					alert("rs");
				/*  var searchByOpertorId=	result.dashboardList;
				alert(searchByOpertorId);
				$.each(searchByOpertorId, function (key, value) { 
					
					
					let tabledata="<tr>"
					+"<td>"+value.operatorId+"</td>"
					+"<td>"+value.verifierName+"</td>"
					+"<td>"+value.stationId+"</td>"
					/* +"<td>'<button type='button' class='btn btn-info'  onclick="myFunction(`${dashboardList.loginDbId}`)"  data-toggle='modal' data-target='#exampleModal' ><i class='fa fa-info-circle' aria-hidden='true'></i></button>'</td>" */
					/* +"</tr>";
					table=table+tabledata;
					$("#tb2").append(table);
	
				})  
				 */
					
				
				}
		}
	   
	   
	   
});
	  
 }
 
 
 
  var someRow= "<th>"+value.name+"</th>"; 
							 	$("#reportList thead").append(someRow);

  </script>   






</body>
</html>