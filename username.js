<script type="text/javascript">

  function checkForm(form)
  {
    if(form.username.value == "") {
      alert("Error: Username cannot be blank!");
      form.username.focus();
      return false;
    }
    re = /^\w+$/;
    if(!re.test(form.username.value)) {
      alert("Error: Username must contain only letters, numbers and underscores!");
      form.username.focus();
      return false;
    }

   </script>

<form ... onsubmit="return checkForm(this);">
<p>Username: <input type="text" name="username"></p>

<p><input type="submit"></p>
</form>
