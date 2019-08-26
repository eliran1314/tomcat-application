<html>
<head><title>Number Guesser</title></head>
<body>
<%              int num=(int)(Math.random()*10);        %>
<h2>Welcome To Number Guesser</h2>
<br><h3>Want To Check Your Guessing Power.....GIVE IT A TRY?????</h3>
<form name="guess" action="try.jsp?c=0" method="post">
<input type="text" name="val" value="<%=num %>" hidden>
<input type="submit" value="GO">
</form>
</body>
</html>
