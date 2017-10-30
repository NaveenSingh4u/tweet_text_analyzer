<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User information insertion</title>
    </head>
    <body>
<% 
String u=request.getParameter("username");
String e=request.getParameter("emailid");
String p=request.getParameter("password");
try
{
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","tiger");
/* Passing argument through the question mark */
    	PreparedStatement ps=con.prepareStatement("insert into login values(?,?,?)") ;    	
        ps.setString(1,u);
    	ps.setString(2,e);
    	ps.setString(3,p);
    	int i=ps.executeUpdate(); /*Set the Update query command */
    	if(i!=0)
     	{                      
        		response.sendRedirect("index.jsp?msg=Thank You for registering with us in SOAP !");
    	 }
     	else
    	 {
           		response.sendRedirect("registerinsert.jsp?msg=Insertion Failed!! Please try again!!!   ");
     	}
         con.close();
    }
    catch(Exception ex)
    {
        out.println(ex);
     }
%>
  </body>
</html>