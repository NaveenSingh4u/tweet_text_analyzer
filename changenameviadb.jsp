 <%@include file="/jsp/soap_header.jsp" %>                    
<html>
<body bgcolor="pink">
<center>
 
<%@page import="java.sql.*,java.util.*"%>  
<%
 try
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
String dbURL="jdbc:oracle:thin:@127.0.0.1:1521:XE";
String dbUser="system";
String dbPassword="tiger";
String pwd=request.getParameter("password");
String newname=request.getParameter("newname");
Connection conn=DriverManager.getConnection(dbURL,dbUser,dbPassword);
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from userinfo where password='"+pwd+"'");
if(rs.next())
  {
    Statement st1=conn.createStatement();
int i=st1.executeUpdate("update userinfo set username='"+newname+"'where password='"+pwd+"'"); 
if(i!=0)
 out.println("Update successfully!!!");
else
 out.println("Updatation fail!!!"); 
}
 
}
 catch(Exception ex)
  {
   System.out.println(ex);
   ex.printStackTrace();
   } 
%> 
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>  
</html>




