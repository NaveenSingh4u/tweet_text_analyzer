<%@ include file="\jsp\soap_header.jsp" %>         
<%@ include file="\jsp\link.jsp" %>
<%@ include file="\jsp\logout.jsp" %>
<%@ include file="\jsp\session.jsp" %>
<html>
<body bgcolor="pink">
<p>
We are here to help you for following things:
<li>To find out sentiment of user through text or word</li>
<li>We can find your interest </li>
<li>We can predict your interest</li>
</br>
</br>
 Please click here to use our application 
<input type="button" value="use application" onClick="window.location='app.jsp'" /></br>
<u><b>NOTE :</b></u>We are not intended to harm your security.We will never misuse your social timeline.We will just get text/word data from your 
timeline for analysis.This can be possible only if you allow to us access to get information.  
</p>
</body>
<%@include file="/jsp/soap_footer.jsp" %>                      
 </html>