  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="\jsp\soap_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <title>www.soap.com/soap/createaccount</title>
<script type="text/javascript">

  function checkForm(form)
  {
    if(form.username.value == "Text") {
      alert("Error: Username cannot be blank!");
      form.username.focus();
      return false;
    }
    re = /^[a-zA-Z0-9_&-]+$/;
    if(!re.test(form.username.value)) {
      alert("Error: Username must contain only letters");
      form.username.focus();
      return false;
    }

    if(form.pwd1.value != "" && form.pwd1.value == form.pwd2.value) {
      if(form.pwd1.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.pwd1.focus();
        return false;
      }
      if(form.pwd1.value == form.username.value) {
        alert("Error: Password must be different from Username!");
        form.pwd1.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.pwd1.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        form.pwd1.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.pwd1.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        form.pwd1.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(form.pwd1.value)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        form.pwd1.focus();
        return false;
      }
    } else {
      alert("Error: Please check that you've entered and confirmed your password!");
      form.pwd1.focus();
      return false;
    }

    alert("You entered a valid password: " + form.pwd1.value);
    return true;
  }
</script>
<body bgcolor="pink">
 
<center>

<form  action="insert.jsp">
<p>Username: <input type="text" name="username"></p>
<p>EmailId:<input type="text" name="emailid" size="30" id="emailid" required="required" /></p>
<p>Handler: <input type="text" name="handler" id="handler"></p>
<p>Password: <input type="password" name="pwd1"></p>
<p>Confirm Password: <input type="password" name="pwd2"></p>
<p><input type="submit"></p>
</form>

</head>
     </center>
</body>
<%@ include file="\jsp\soap_footer.jsp" %>         
</html>
