<html>

<body>

<h3>
JSP Built-In Object</h3>

Request user agent:<%= request.getHeaders("User-Agent") %>
<!-- user request we can get the information that which browser is used by the user  --> 

<br><br>

Request Language: <%= request.getLocale() %>
</body>

</html>