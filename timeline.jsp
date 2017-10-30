<%@include file="/jsp/soap_header.jsp" %>      
<%@ include file="\jsp\link.jsp" %>      
<%@include file="/jsp/logout.jsp" %>        
<html>
<head>
<title>use of http parameter</title>
</head>
<body bgcolor="pink">
<form method=get action="execute.jsp">
Name <input type="text" size=30 name="name"></br></br>
Please express your openion </br><textarea cols="60" rows="10" size="100" name="tn" id="tn" >
</textarea></br></br>
<input type=submit value=submit>
</form>
</body>
<%@include file="/jsp/soap_footer.jsp" %>                    
</html>