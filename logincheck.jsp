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
PreparedStatement stmt=conn.prepareStatement("select * from USERINFO where username=? and password=?");
 try
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
  }
 catch(Exception ex)
  {
   System.out.println("class not found!");
   }

  
 try
  {
   stmt.setString(1,request.getParameter("username"));
   stmt.setString(2,request.getParameter("password"));
     ResultSet result=stmt.executeQuery();
      if(result.next())
       {
        session.setAttribute("username",username);
        response.sendRedirect("home.jsp");
  } 
 else
  {
    response.sendRedirect("error.jsp"); 
   }
}
 catch(Exception ex)
  {
   System.out.println(ex);
  }
%>
</body>
</html>

