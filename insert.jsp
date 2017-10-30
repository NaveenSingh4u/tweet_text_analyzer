<html>
<body>
<center>
<%@ include file="\jsp\soap_header.jsp" %>
 <%@page import="java.sql.*,java.util.*"%>  
<%
 try
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
String dbURL="jdbc:oracle:thin:@127.0.0.1:1521:XE";
String dbUser="system";
String dbPassword="tiger";
String un=request.getParameter("username");
String id=request.getParameter("emailid");
String hd=request.getParameter("handler");
String ps=request.getParameter("pwd1");

out.println("Welcome "+un);
out.println("You have successfully registered!!! ");

 
Connection conn=DriverManager.getConnection(dbURL,dbUser,dbPassword);
PreparedStatement st=conn.prepareStatement("insert into userinfo values(?,?,?,?)");
st.setString(1,un);
st.setString(2,id);
st.setString(3,id);
st.setString(4,ps);
st.executeUpdate();
}
 catch(Exception ex)
  {
   System.out.println(ex);
   ex.printStackTrace();
   } 
%>
Click here for going to homepage<a href="index.jsp">Go To HomePage </a>
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>
</html>