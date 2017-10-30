 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ include file="\jsp\soap_header.jsp" %>         
<!DOCTYPE html>
<html>
    <head>
<body bgcolor="pink">
        <title>www.soap.com/soap</title>

	<script type="text/javascript">
	function buttonclick()
       {
        window.location="createaccount.jsp";
       }
        function Click()
       {
        window.location="updateaccount.jsp";
       }
       function validate()
	{
	 var username=document.getElementById("username").value;
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
		<%
		//RequestDispatcher rd=request.getRequestDispatcher("mainpage.jsp");
		//rd.forward(request,response);
		//response.sendRedirect("mainpage.jsp");
                //onsubmit="return validate()"
		%>
		return true;
          }
        

   </script>
    </head>
    <body bgcolor="white">       <fieldset>
         <center>
           <legend>
	   <form name="index" method="post"  action="logincheck.jsp">
  </br>UserName:&nbsp<input type="text" name="username" id="username">
</br></br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
Password:&nbsp<input type="password" name="password" id="password">(length should be atleast 6)
		</br><br>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" name="submit" value="login"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" name="reset"></br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="button" value="Update Account" onClick="Click()" /></br>
             <p><center>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspIf you are new, click here for create account</center></p>    
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="button" value="create Account" onClick="buttonclick()" /></br>
                
		</br>
   <p>Click here if you are developer </p><a href="dev.jsp">App Manager</a>	 
                </br>
		</br>	 
                </br>
        </form></legend></center></fieldset>
    <%@include file="/jsp/soap_footer.jsp" %>                    
    </body>
</html> 