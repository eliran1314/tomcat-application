<html>
<head><title>Number Guesser</title></head>
<body>
<%    String str=request.getParameter("val");
      boolean flag=true;      
      int num=Integer.parseInt(str);
      int c=Integer.parseInt(request.getParameter("c"));
      if(c!=0)
      {
                  int guess=Integer.parseInt(request.getParameter("guess"));
                  if(num==guess){
                              flag=false;
      %>
                  <h3>Congratulation...You Successes After <%=c%> attempts</h3>
                  <b>Want to Improve...<a href="Number.jsp">try again</a></b>
      <%       }else if(num>guess) { %>
                  <h3>You Guessed Lower...Try Bigger Number</h3>
      <%       }else{ %>       
                  <h3>You Guessed Higher...Try Smaller Number</h3>
      <%       }
      }
      if (flag) { c++; %>     
      <h3>I Guessed a Number between 1 to 100. Try To Guess..</h3>
      <form name="guess" action="try.jsp?c=<%= c%>" method="post">
      <input type="text" value="<%=num %>" name="val" hidden>
      Make Your Guess : <input type="text" name="guess" size=10 maxlength=3>
      <input type="submit" value="GO">
      </form>
      <% } %>

</body> 
</html>
