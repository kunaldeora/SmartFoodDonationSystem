<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link href="resources/assets/css/ride.css"  rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

<div class="brand">Vital Sign Monitor!</div>

<div class="container">






<div class="row">
			<div  class="col-lg-4">
			</div>

	
		
            
                    <div class="col-lg-4">
						<div class="box" id="log">
                        
                        
				<form action="add" modelAttribute="list" method="post">
                              <div class="form-group">
                                    <label for="bp">Systolic Blood Pressure: <font color="red"> Abnormal Level</font></label>
                                    <input type="text" class="form-control" value="${list.systolic_bpRate}">
                                </div>
                                <div class="form-group">
                                    <label for="dbp">Dystolic Blood Pressure: <font color="red"> Abnormal Level</font></label>
                                    <input type="text" class="form-control" value="${list.diastolic_bpRate}">
                                </div>
                                <div class="form-group">
                                    <label for="hr">Heart Rate: <font color="red"> Abnormal Level</font></label>
                                    <input type="text" class="form-control" value="${list.heartRate}">
                                </div>
                                <div class="form-group">
                                    <label for="bp">Respiratory Rate: <font color="red"> Abnormal Level</font></label>
                                    <input type="text" class="form-control" value="${list.respiratoryRate}">
                                </div>
                                
                                <!-- <div class="form-group">
                                    <label for="bp">Action:</label>
                                    <input type="text" class="form-control" name="action">
                                </div> -->
                                
                                <div class="form-group">
                                    <label for ="act">Action:  </label>
                                </br>
                                   <label class="radio-inline"><input type="radio" name="action" value="Y"><strong>Yes</strong></label>
                                    <label class="radio-inline"><input type="radio" name="action" value="N"><strong>No</strong></label>
                                </div>
                                <br/>
                               
                                
                                
                                <input type="hidden" name="v_id" type="text" value="${list.vitalSignId }">
                                <button type="btn btn-success
                              " class="btn btn-success" type="submit"> Submit Action!</button>
                              
				</form>


                        
	
                    </div>    
        
            </div>   
            
            <div  class="col-lg-4">
			</div>
         
        </div>
        
    </div>    



<script type="text/javascript" src="resources/assets/js/source/backstretch.js"></script>
<script type="text/javascript">
$.backstretch("resources/assets/images/backgroundImage.jpg");
</script>





</body>
</html>