<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<!DOCTYPE html>
<html lang="en">


    <title>Creating a question bank
    </title>
    <head>
    	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="dummy/mbubble.css" type="text/css" />
    	<script src="dummy/mbubble.js" type="text/javascript"></script>
<style>
	form {
    	border: 2px solid ;
	position:absolute;
	 top: 30%;
	 left: 40%;
	padding: 20px;
	}
	/*input[type =text],input[type=number]{
	  width:90%;
	}*/
	/*select{
		width:90%;
	}*/
</style>
        <script>
          function changeAction(val)
		  {
		    document.getElementById("qtype").action = val;
		  }
		  function changeAction2(val)
		  {
		    document.getElementById("insert").href = val;
		  }
        </script>
    </head>
    <body>
    	<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();

          Connection connection=DriverManager.getConnection("jdbc:mysql://localhost","root","root");
       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("SELECT upper(table_name) FROM information_schema.tables where table_schema=\'qbank\'") ;
%>
       <div class="jumbotron">

       	<a id="insert" href="add.jsp" target="blank"><button type="button" class="btn btn-lg btn-primary">Add Questions</button></a><br><br>
   
    <div>
    	<label class="radio-inline form-check-label">
		<input class="form-check-input" type ="radio" name = "option2"  value ="add.jsp" checked onchange="changeAction2(this.value)">
	    <b>Theoretical</b></label>
    
    	<label  class="radio-inline form-check-label">
		<input class="form-check-input" type ="radio"  name = "option2" value ="add2.jsp" onchange="changeAction2(this.value)">
		<b>MCQ</b></label>
	</div>

       </div>

        
	
	


           <div>
            <form method="POST" id="qtype" action="project.jsp">
		<h1>Generate Question Paper</h1>

			   <label  class="radio-inline form-check-label">
		   	   <input type ="radio" name = "option" value ="project.jsp" checked onchange="changeAction(this.value)">
			   <b>Theoretical</b>
			   </label>
			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		       <label  class="radio-inline form-check-label">
		       <input type ="radio" name = "option" value ="mcq.jsp" onchange="changeAction(this.value)">
		       <b>MCQ</b>
		   	   </label>
		   	   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   	   <br><br>
		<div class="form-group">
			    <b>Subject:</b>&nbsp;&nbsp;&nbsp;<br>
        <select name="subject" class="form-control">
        <%  while(resultset.next()){ %>
            <option value="<%= resultset.getString(1)%>"><%= resultset.getString(1)%></option>
        <% } %>
        </select>
       <!--  <br><br> -->
       </div>
        <div class="form-group">
               <label for="total"><b>Total marks :</b></label><br/> <input type="text" class="form-control" name="total" />
               
        </div>
        <div class="form-group">
			   <label for="total"><b>Overall Difficulty :</b></label><br/> <input type="number" class="form-control" name="difficulty" /><!-- <br><br> -->
		</div>
		<div class="form-group">
               <label for="five"><b>No. of Five Marks Question : </b></label><br/>  <input type="number" class="form-control" name="five" /><!-- <br><br> -->
        </div>
        <div class="form-group">
			   <label for="three"><b>No. of Three Marks Questions :</b></label><br/>  <input type="number" class="form-control" name="three" /><!-- <br><br> -->
		</div>
		<div class="form-group">
			   <label for="two"><b>No. of Two Marks Questions :</b></label><br/>  <input type="number" class="form-control" name="two" /><!-- <br><br> -->
		</div>	   
			   
                <input type="submit" value="Submit" id="loginButton" class="btn  btn-danger"/><!-- <br/><br/> -->
		<label id="error"></label>
            </form>
         </div>   
           <%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
       
    </body>
</html>