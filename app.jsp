<%@include file="/jsp/soap_header.jsp" %>            
<%@ include file="\jsp\link.jsp" %>        
<%@include file="/jsp/logout.jsp" %>
<%@ include file="\jsp\session.jsp" %>
<html>
<body bgcolor="pink">
<center>
 Choose your account through which you want to use our application.
<table>
<tr>
<td><input type="button" value="Twitter" name="twitter" onclick="window.location='twitterapi.jsp'"/> </td><br> 
<td><input type="button" value="Facebook" name="fb" onclick="window.location='facebookapi.jsp'"/></td><br>
<td><input type="button" value="Google API" name="google" onclick="window.location='googleapi.jsp'"/></td><br>
<td><input type="button" value="soap timeline" name="timeline" onclick="window.location='timeline.jsp'"/></td><br>
</tr>
</table>
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>  
</html>
                    