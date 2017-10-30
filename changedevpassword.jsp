<%@ include file="\jsp\soap_header.jsp" %>         
 <html>

 <body>
<center>
  <h2>Welcome </h2>
  <h4>Give detail here for update your account<h4>
   <form name="index" method="post" action="changedevpasswordviadb.jsp">
  </br>Existing Password:&nbsp<input type="password" name="oldpassword" id="oldpassword">
</br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp New Password:&nbsp<input type="password" name="newpassword" id="newpassword"></br><br>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="submit" name="submit" value="Modify"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" name="reset">
          </form>      
 </center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>                      
 </html> 