import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 
public class ...Servlet extends HttpServlet {
 
   // Runs when the servlet is loaded onto the server.
   public void init() {
      ......
   }
 
   // Runs on a thread whenever there is HTTP GET request
   // Take 2 arguments, corresponding to HTTP request and response
   public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {
 
      // Set the MIME type for the response message
      response.setContentType("text/html");
      // Write to network
      PrintWriter out = response.getWriter();
 
      // Your servlet's logic here
      out.println("<html>");
      out.println( ...... );
      out.println("</html>");
   }
 
   // Runs as a thread whenever there is HTTP POST request
   public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {
      // do the same thing as HTTP GET request
      doGet(request, response);
   }
 
   // Runs when the servlet is unloaded from the server.
   public void destroy() {
      ......
   }
 
   // Other instance variables and methods
 }
