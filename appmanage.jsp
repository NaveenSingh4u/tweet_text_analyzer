 <%@include file="/jsp/soap_header.jsp" %>
 <%@include file="/jsp/signout.jsp" %>                    
<html>
<body bgcolor="pink">
<center>
 Choose your account through which you want to use our application.
<table>
<tr>
<td><input type="button" value="Insert Keyword" name="insertkeyword" onclick="window.location='entrydictionary.jsp'"/> </td><br> 
</tr>
<tr>
<td><input type="button" value="Insert Hashtag" name="inserthashtag" onclick="window.location='entryhash.jsp'"/></td><br>
</tr>
<td><input type="button" value="Insert Emoticons" name="insertemoticons" onclick="window.location='insertemoticons.jsp'"/></td><br>
 </tr>
</table>
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>  
</html>
                    