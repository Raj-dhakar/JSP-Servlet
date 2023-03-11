<html>
<head>
<title>Confirmation</title>
</head>
<%  //sending cookie to browser 
   //read from the data
   
   String favLang=request.getParameter("favouriteLanguage");

   //Create the cookie
   Cookie theCookie =new Cookie("myApp.favouriteLanguage",favLang);
   
   //set the life span total number og seconds
   theCookie.setMaxAge(60*60*24*365);   //<-- for one year
   
   //send the cookie to the browser 
   response.addCookie(theCookie);
%>
<body>

Thanks! we set your favourite language to: ${param.favouriteLanguage };

<br><br>

<a href="13cookies-homepage.jsp">Return to homepage</a>

</body>

</html>