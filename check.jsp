<%@page import="java.sql.*"%>
<%
	int count=0;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/qbank","root","root");
	Statement stmt = con.createStatement();
	String query = "select * from dbms_mcq";
	ResultSet rs = stmt.executeQuery(query);
	while(rs.next())
	{
		String q = rs.getString("description");
		String ans =""; 
		ans +=request.getParameter(q);
		if(ans.equals(""))
			continue;
		String res =rs.getString("answer");
		String correct =rs.getString(res);
		//out.println(ans);
		//out.println(correct);
		if(ans.equals(correct))
			count++;
	}
	out.println(count+" question(s) were correct");
%>