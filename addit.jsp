<%@page import="java.sql.*"%>
<%  

	String subject=request.getParameter("subject");
	String description=request.getParameter("description");
	String diffi=request.getParameter("difficulty");
	String mar=request.getParameter("marks");
	int difficulty=Integer.parseInt(diffi);
	int marks=Integer.parseInt(mar);

   

 	try{
 			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/qbank","root","root");

			Statement st=conn.createStatement();
			int i=st.executeUpdate("insert into "+subject+ "(description,difficulty,marks)values('"+description+"',"+difficulty+","+marks+")");
			
			out.println("Data is successfully inserted!   "+ mar);
 	   }
 	   catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>