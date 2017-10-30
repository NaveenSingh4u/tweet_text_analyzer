<%@ include file="\jsp\soap_header.jsp" %>
<%@include file="/jsp/signout.jsp" %>
<html>
<body> 
<center>
 </br><u>Dictionary of hash tag:(please select the smiley sticker)</u>

    <p>Sorry!!! This service is not ready yet...It will available soon </p>
 	   <form name="hashentry" method="post" action="hashentry.jsp" onsubmit="validate()">
                </br>Emoticons browse:<img scr="" ></br>
		</br>Sentiment:<input type="text" name="sentiment" size="30" id="sentiment"></br>
                <input type="submit" name="submit" value="submit" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" name="reset">
           </form>
Click here <a href="appmanage.jsp">For going previous page </a>
</center>
</body>
 <%@include file="/jsp/soap_footer.jsp" %> 
</html>