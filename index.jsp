<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<html>

    <title>Creating a question bank
    </title>
    <head>
<style>
	form {
    	border: 2px solid ;
	position:absolute;
	 top: 30%;
	 left: 40%;
	padding: 20px;
	}
	input[type =text],input[type=number]{
	  width:90%;
	}
	select{
		width:90%;
	}
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

       resultset =statement.executeQuery("SELECT table_name FROM information_schema.tables where table_schema=\'qbank\'") ;
%>


        <h3><a id="insert" href="add.jsp" target="blank">Add Questions</a></h3>
		<b>MCQ</b>&nbsp;&nbsp;&nbsp;<input type ="radio" name = "option2" value ="add2.jsp" onchange="changeAction2(this.value)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <b>Theoretical</b>&nbsp;&nbsp;&nbsp;<input type ="radio" name = "option2" value ="add.jsp" checked onchange="changeAction2(this.value)"><br><br><br>
        	
            <form method="POST" id="qtype" action="project.jsp">
		<h1>Generate Question Paper</h1>
		       <b>MCQ</b>&nbsp;&nbsp;&nbsp;<input type ="radio" name = "option" value ="mcq.jsp" onchange="changeAction(this.value)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			   <b>Theoretical</b>&nbsp;&nbsp;&nbsp;<input type ="radio" name = "option" value ="project.jsp" checked onchange="changeAction(this.value)"><br><br><br>
			    <b>Subject:<b>&nbsp;&nbsp;&nbsp;<br>
        <select name="subject">
        <%  while(resultset.next()){ %>
            <option value="<%= resultset.getString(1)%>"><%= resultset.getString(1)%></option>
        <% } %>
        </select>
        <br><br>
               <label for="total"><b>Total marks :</b></label><br/> <input type="text" name="total" /><br><br>
			   <label for="total"><b>Overall Difficulty :</b></label><br/> <input type="number" name="difficulty" /><br><br>
               <label for="five"><b>No. of Five Marks Question : </b></label><br/>  <input type="number" name="five" /><br><br>
			   <label for="three"><b>No. of Three Marks Questions :</b></label><br/>  <input type="number" name="three" /><br><br>
			   <label for="two"><b>No. of Two Marks Questions :</b></label><br/>  <input type="number" name="two" /><br><br>
			   
                <input type="submit" value="Submit" id="loginButton" /><br/><br/>
		<lable id="error"></lable>
            </form>
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