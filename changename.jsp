<%@ include file="\jsp\soap_header.jsp" %>         
 <html>

 <body>
<center>
 <h2>Welcome </h2>
  <h4>Give detail here for update your account<h4>
   <form name="index" method="post" action="changenameviadb.jsp">
  </br>Password:&nbsp<input type="password" name="password" id="password">
</br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspNew Name:&nbsp<input type="text" name="newname" id="newname"></br><br>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="submit" name="submit" value="Modify"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" name="reset">
           </form>   
 </center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>                      
 </html>