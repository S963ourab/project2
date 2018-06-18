<%@page import="java.sql.*"%>
<%@page import="java.lang.Integer"%>
<%
	
	 Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/qbank","root","root");
	 out.write("<html>");
     out.write("<head/>");
	 out.write("<center><h1>");
	 String subject = request.getParameter("subject");
	 out.write(subject);
	 out.write(" Question Paper");
	 out.write("</h1></center>");
	 out.write("<h2><center>Full Marks : ");
	 out.write(request.getParameter("total"));
	 out.write("</center></h2>");
	 out.write("<body>");
	  out.write("<style>body {border: 2px solid ;margin:auto;padding: 10px;}</style>");
	 
	Statement stmt = con.createStatement();
	int limit =0,sum=0;
	int avg = Integer.parseInt(request.getParameter("difficulty"));
	int n1 = Integer.parseInt(request.getParameter("five"));
	limit += 5*n1*avg;
	int n2 = Integer.parseInt(request.getParameter("three"));
	limit += 3*n2*avg;
	int n3 =Integer.parseInt(request.getParameter("two"));
	limit += 2*n3*avg;
	int c=1;
	String query = "select * from dbms where marks = 5 order by rand()";
	ResultSet rs = stmt.executeQuery(query);
    int i=0;
	while(rs.next())
	{   out.write("<font size=\"4\">");
	    out.write(Integer.toString(c));
		out.write(".");
		c++;
	    out.write(rs.getString("description"));
	    out.write("<span class='mark'>");
		
		out.write("("+rs.getString("marks")+")");
		out.write("</span>");
		out.write("</font>");
		out.write("<br><br><br>");
		i++;
		sum+= 5*Integer.parseInt(rs.getString("difficulty"));
		if(i==n1)
		   break;
	 
	}

	
	query = "select * from dbms where marks = 3 order by rand()";
	rs = stmt.executeQuery(query);
	i =0;
	while(rs.next())
	{	out.write("<font size=\"4\">");
	    out.write(Integer.toString(c));
		out.write(".");
		c++;
	    out.write(rs.getString("description"));
	    out.write("<span class='mark'>");
	    
	    out.write("("+rs.getString("marks")+")");
	    out.write("</span>");
	    out.write("</font>");
		out.write("<br><br><br>");
		i++;
		sum+= 3*Integer.parseInt(rs.getString("difficulty"));
		if(i==n2)
			break;
	}
	
	int diff = limit - sum;
	int val = diff/(2*n3);
	if(val>10)
		val = 10;
	query = "select * from dbms where marks = 2 order by difficulty desc";
	rs = stmt.executeQuery(query);
    i=0;
	while(rs.next())
	{	out.write("<font size=\"4\">");
		int temp =Integer.parseInt(rs.getString("difficulty"));
		if(temp>val)
			continue;
	    out.write(Integer.toString(c));
		out.write(".");
		c++;
	    out.write(rs.getString("description"));
	    out.write("<span class='mark'>");
		
		out.write("("+rs.getString("marks")+")");
		out.write("</span>");
		out.write("</font>");
        out.write("<br><br><br>");
        i++;			
        if(i==n3)
           break;			  
	}
	out.write("<button id=\"printpage\" onclick=\"myFunction()\">Print</button>");
	out.write("<script>function myFunction() {");
	out.write("var printButton = document.getElementById(\"printpage\");");
	out.write("printButton.style.visibility = \'hidden\';");	
	out.write("window.print();");	
	out.write("printButton.style.visibility = \'visible\';");	
	out.write("}</script>");	
		
		
		
	
	out.write("</body>");
    out.write("</html>");
%>