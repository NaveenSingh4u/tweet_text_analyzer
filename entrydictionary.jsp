<%@include file="/jsp/soap_header.jsp" %>
<%@include file="/jsp/signout.jsp" %>
<html>
<body> 
<center>
 </br><u>Updating data dictionary :</u>
 	   <form name="entrydictionary" method="post" action="insertkeyword.jsp" ">
                </br>Sentence/Keyword:<input type="text" name="keyword" id="keyword" ></br>
		</br>Sentiment:<input type="text" name="sentiment" size="30" id="sentiment"></br>
		</br>Intensity:<input type="number" step="0.01" name="intensity" size="30" id="sentiment"></br>
                <input type="submit" name="submit" value="submit" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" name="reset">
           </form>
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %> 
</html>