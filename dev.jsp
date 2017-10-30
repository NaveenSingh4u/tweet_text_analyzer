<%@ include file="\jsp\soap_header.jsp" %>         
 <html>
<head>
<script> 
       function validate()
	{
	 var username=document.getElementById("devname").value;
	 var password=document.getElementById("password").value;
          if(username==""||username==" "||username==null)
		{
		 alert("Please fill your name : ");
		 return false;
		}
  	     else if(password==""||password==" "||password==null)
		{
			 alert("Please fill your password : ");
			 return false;
		}

          else
                  return true;
}
</script>
</head>
 <body>
<center>
  <h2>Welcome to develper page </h2>
  <h4>Login here for manage the application<h4>
   <form name="index" method="post" action="devlogincheck.jsp">
  </br>Developer Name:&nbsp<input type="text" name="devname" id="devname">
</br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPassword:&nbsp<input type="password" name="password" id="password"></br><br>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" name="submit" value="login"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" name="reset">
<a href="devupdate.jsp">Update Account</a></br>

       </form>       
</center>
</body>
<%@include file="/jsp/soap_footer.jsp" %>                      
 </html>