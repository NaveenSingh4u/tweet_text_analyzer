 <%@ include file="\jsp\soap_header.jsp" %>  
 <%@include file="/jsp/signout.jsp" %>
 <%@page import="java.sql.*,java.util.*"%>  
<html>
<body>
<center>
 <%
 try
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
String dbURL="jdbc:oracle:thin:@127.0.0.1:1521:XE";
String dbUser="system";
String dbPassword="tiger";
String hash=request.getParameter("hash");
String sentiment=request.getParameter("sentiment");
Float intensity=Float.parseFloat(request.getParameter("intensity"));
out.println(hash);
out.println(sentiment);
out.println(intensity);
Connection conn=DriverManager.getConnection(dbURL,dbUser,dbPassword);
PreparedStatement st=conn.prepareStatement("insert into  keyworddictionary values(?,?,?)");
st.setString(1,hash);
st.setString(2,sentiment);
st.setFloat(3,intensity);
st.executeUpdate();
}
 catch(Exception ex)
  {
   System.out.println(ex);
   ex.printStackTrace();
   } 
%>
Click here <a href="inserthash.jsp">For insert hashword again </a></br>
Click here <a href="appmanage.jsp">For going previous page </a>
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>  
</html>