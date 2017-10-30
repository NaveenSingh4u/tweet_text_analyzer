<%@include file="/jsp/soap_header.jsp" %>
<%@include file="/jsp/signout.jsp" %>
<html>
<body> 
<center>
 </br><u>Dictionary of hash tag:(please don not give space and # symbol should be added first)</u>
 	   <form method="post" action="inserthash.jsp" onsubmit="validate()">
                </br>HashTag:<input type="text" name="hash" id="hash" ></br>
		</br>Sentiment:<input type="text" name="sentiment" size="30" id="sentiment"></br>
		</br>Intensity:<input type="number" step="0.01"  name="intensity" size="5" id="sentiment"></br>
                <input type="submit" name="submit" value="submit" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" name="reset">
           </form>
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %> 
</html>