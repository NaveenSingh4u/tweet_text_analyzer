 <%@ include file="\jsp\soap_header.jsp" %>
<%@ include file="\jsp\logout.jsp" %>
<%@ include file="\jsp\session.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.io.*, java.util.*, java.net.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Reading Text File</title>
</head>
<body>
<%
StringBuffer nsb=new StringBuffer();

String fileName = "/Downloads/ns96.txt";
InputStream ins = application.getResourceAsStream(fileName);
try
{
if(ins == null)
{
response.setStatus(response.SC_NOT_FOUND);
}
else
{
BufferedReader br = new BufferedReader((new InputStreamReader(ins)));
String data;
while((data= br.readLine())!= null)
nsb.append(data);
String str=new String(nsb);
/*{

out.println(data+"<br>");
}*/
out.println(str);
String dburl="jdbc:oracle:thin:@127.0.0.1:1521:XE";
String dbuser="system";
String dbpass="tiger";
java.sql.Connection con=java.sql.DriverManager.getConnection(dburl,dbuser,dbpass);
java.sql.Statement st=con.createStatement();
java.sql.ResultSet rs=st.executeQuery("select  *from keyworddictionary");
while(rs.next())
{
 
/* ResultSet rs=st.executeQuery(query);
 out.println(query);*/
String senti=rs.getString(1);
int test=str.indexOf(senti);
if(test>0)
{
out.println("<br>Status......="+"<br>");
String sent=rs.getString(2);
float intes=rs.getFloat(3);
out.println("<br> Found Keyword="+senti+"Sentiments is="+sent + "and intensity is="+intes);
}
}

} 
}
catch(IOException e)
{
out.println(e.getMessage());
}
%>
</body>
<%@include file="/jsp/soap_footer.jsp" %>
</html>