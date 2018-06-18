<%@page import="java.sql.*"%>
<%  

	String subject=request.getParameter("subject");
	String description=request.getParameter("description");
	String diffi=request.getParameter("difficulty");
	String mar=request.getParameter("marks");
	int difficulty=Integer.parseInt(diffi);
	int marks=Integer.parseInt(mar);
	String optionA = request.getParameter("optionA");
    String optionB = request.getParameter("optionB");
	String optionC = request.getParameter("optionC");
	String optionD = request.getParameter("optionD");
	String ans = request.getParameter("answer");
   

 	try{
 			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/qbank","root","root");

			Statement st=conn.createStatement();
			int i=st.executeUpdate("insert into "+subject+ "(description,difficulty,marks,optionA,optionB,optionC,optionD,answer)values('"+description+"',"+difficulty+","+marks+",'"+optionA+"','"+optionB+"','"+optionC+"','"+optionD+"','"+ans+"')");
			
			out.println("Data is successfully inserted!   ");
 	   }
 	   catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>