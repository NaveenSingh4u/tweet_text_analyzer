 <%@page import="java.sql.*"%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<html>
 <head><title>Login Check</title></head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String dbURL="jdbc:oracle:thin:@127.0.0.1:1521:XE";
String dbUser="system";
String dbPassword="tiger";
Connection conn=DriverManager.getConnection(dbURL,dbUser,dbPassword);
PreparedStatement stmt=conn.prepareStatement("select * from DEVINFO where devname=? and password=?");
 try
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
  }
 catch(Exception ex)
  {
   System.out.println("class not found!");
   }

/*   try
  {
Connection  conn=DriverManager.getConnection(dbURL,dbUser,dbPassword);
  }
 catch(Exception ex)
  {
   System.out.println("connection error!");
   }
*/
 try
  {
   stmt.setString(1,request.getParameter("devname"));
   stmt.setString(2,request.getParameter("password"));
     ResultSet result=stmt.executeQuery();
      if(result.next())
       {
        response.sendRedirect("appmanage.jsp");
  } 
 else
  {
    response.sendRedirect("retry.jsp"); 
   }
}
 catch(Exception ex)
  {
   System.out.println("statement error!");
  }
%>
</body>
</html>

