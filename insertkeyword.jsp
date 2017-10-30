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
String keyword=request.getParameter("keyword");
String sentiment=request.getParameter("sentiment");
Float inten=Float.parseFloat(request.getParameter("intensity"));
out.println("successfully inserted!!");
Connection conn=DriverManager.getConnection(dbURL,dbUser,dbPassword);
PreparedStatement st=conn.prepareStatement("insert into  keyworddictionary values(?,?,?)");
st.setString(1,keyword);
st.setString(2,sentiment);
st.setFloat(3,inten);
st.executeUpdate();
}
 catch(Exception ex)
  {
   System.out.println(ex);
   ex.printStackTrace();
   } 
%>
Click here <a href="entrydictionary.jsp">For insert keyword again </a></br>
Click here <a href="appmanage.jsp">For going previous page </a>
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>  
</html>