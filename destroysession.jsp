<%@ page language="java"  import="java.util.*"%>
 <%
session.invalidate();
response.sendRedirect("index.jsp");
%>