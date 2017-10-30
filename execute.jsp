<%@ include file="\jsp\soap_header.jsp" %>         
<html>
<body>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("tn");
out.println("Welcome Mr."+s1);
out.println("Your  sentence : "+s2);

String dburl="jdbc:oracle:thin:@127.0.0.1:1521:XE";
String dbuser="system";
String dbpass="tiger";
java.sql.Connection con=java.sql.DriverManager.getConnection(dburl,dbuser,dbpass);
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery("select  *from keyworddictionary");
while(rs.next())
{
 
/* ResultSet rs=st.executeQuery(query);
 out.println(s2);*/
String senti=rs.getString(1);
int test=s2.indexOf(senti);
if(test>0)
{
out.println("<br>Status......="+"<br>");
String sent=rs.getString(2);
float intes=rs.getFloat(3);
out.println("<br> Found Keyword="+senti+"Sentiments is="+sent + "and intensity is="+intes);
}
}


%>
</body> 
 <%@include file="/jsp/soap_footer.jsp" %>                    
</html>
 