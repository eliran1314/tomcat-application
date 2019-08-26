  <% %>
<%@include file=”/libs/foundation/global.jsp”%><% %>
<%@page session=”false” %>
<% %>
<cq:includeClientLib css=”test.css” />
<cq:includeClientLib js=”test.js” />
<div>
<h1>Hello World!!</h1>
<h2>I am using JSP!!</h2>
<h2>properties</h2>
<%
String title = properties.get(“jcr:title”, “default title”);
String text = properties.get(“jcr:text”, “default text”);%>
Title: <%= title %> <br/>
Text: <%= text %> <br/><br>
<h2>currentPage</h2>
Title: <%= currentPage.getTitle() %><br>
Name: <%= currentPage.getName() %><br>
Path: <%= currentPage.getPath() %><br>
Depth: <%= currentPage.getDepth() %><br>
<h2>currentNode</h2>
Name: <%= currentNode.getName() %><br>
Path: <%= currentNode.getPath() %><br>
Depth: <%= currentNode.getDepth() %><br><br>
<c:if test=”${properties.name}”>
<c:set var=”test” value= “target=’_blank'”/>
</c:if>
<a class=”btn btn-primary-outline”
href=”<%=testurl%>”
${test} role=”button”>${properties.name}
</a>
</div>
