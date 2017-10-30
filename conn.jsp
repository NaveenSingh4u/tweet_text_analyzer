 <%@ include file="\jsp\soap_header.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP connectivity</title>
</head>
<body>
    <form id="form1" name="form1" method="get" action="but1.jsp">
   <input type="submit" name="but1" id="but1" value="Submit">
   
    <% 
    String s=request.getParameter("txt");
    String s1=request.getParameter("txt");
    Connection con;
    Statement st;
    ResultSet rs;

try{
    Class.forName("oracle.jdbc.OracleDriver");
       con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","tiger");
       st=con.createStatement();
       String query="insert into (id,name) values ("+s+","+s1+")";
       int rs=st.executeUpdate(query);
catch(Exception e)
{
    System.out.println(e.getMessage());
}
%>
</body>
<%@ include file="\jsp\soap_footer.jsp" %> 
</html>