  <%@ include file="\jsp\soap_header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.io.*,java util.*,java.sql.*,java.util.StringTokenizer,java.io.BufferReader,java.io.File,
java.io.FileReader,java.io.IOException,java.io.FileNotFoundException,java.net.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Reading Text File</title>
</head>
<body>
<%
BufferReader reader=new BufferReader(new FileReader("/Downloads/ns96.txt"));
ArrayList<String> list=new ArrayList<String>();
 
StringTokenizer stk=new StringTokenizer(s);
while(stk.hasMoreTokens())
{
 String s;
 s=stk.nextToken());
 list.add(s);
}



String key;
String dburl="jdbc:oracle:thin:@127.0.0.1:1521:XE";
String dbuser="system"
String dbpass="tiger";
Connection con=DriverManager.getConnection(dburl,dbuser,dbpass);
Statement st=con.createStatement();

while(rs.next())
{
 String query=st.executeQuery("select sentiment from keyworddictionary where keyword="+key);
 String q="select * from keyworddictionary";
 ResultSet rs=st.executeQuery(q);
 ResultSet rs=st.executeQuery(query);
 out.println(query);
}


%>
</body>
<%@include file="/jsp/soap_footer.jsp" %>
</html>