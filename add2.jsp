<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
<!DOCTYPE html>
<html lang="en">


<HEAD>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <TITLE>ADD QUESTION</TITLE>
    <style>
    form {
        border: 2px solid ;
     width:50%;
     margin:auto;
    padding: 10px;
    }
    
</style>
</HEAD>

<BODY >

<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();

          Connection connection=DriverManager.getConnection("jdbc:mysql://localhost","root","root");
       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("SELECT table_name FROM information_schema.tables where table_schema=\'qbank\'") ;
%>


    <form method="post" action="addit2.jsp">
        <center><h1>ADD THE QUESTION</h1></center>
        <br><br>
     <b>Select the subject<b>&nbsp;&nbsp;&nbsp;
        <select name="subject">
        <%  while(resultset.next()){ %>
            <option value="<%= resultset.getString(1)%>"><%= resultset.getString(1)%></option>
        <% } %>
        </select>
        <br><br>
		 <b>Enter the question<b> <br>
         <textarea name="description" rows="5" cols="100"></textarea>
         <br><br>
         <b>optionA<b> <br>
         <textarea name="optionA" rows="2" cols="100"></textarea>
         <br><br>
		 <b>optionB<b> <br>
         <textarea name="optionB" rows="2" cols="100"></textarea>
         <br><br>
		 <b>optionC<b> <br>
         <textarea name="optionC" rows="2" cols="100"></textarea>
         <br><br>
		 <b>optionD<b> <br>
         <textarea name="optionD" rows="2" cols="100"></textarea>
         <br><br>
		 <b>Answer<b> <br>
         <textarea name="answer" rows="2" cols="100"></textarea>
         <br><br>
         <b><label for="difficulty">Difficulty: </label><b> 
         <select name ="difficulty"><br>
            <option value="1">1</option><option value="2">2</option>
            <option value="3">3</option><option value="4">4</option>
            <option value="5">5</option><option value="6">6</option>
            <option value="7">7</option><option value="8">8</option>
            <option value="9">9</option><option value="10">10</option>
         </select>
         <br><br>  
         <b><label for="marks">Marks: </label><b>&nbsp;&nbsp;&nbsp;
         <input type="number" id="marks" name="marks" min="1" max="20"><br><br>
         <input type="submit" value="ADD" id="add" />
    </form>


<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</BODY>
</HTML>