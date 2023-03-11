<html>

<body>
<h3>Traning Portal</h3>
<!-- read the favourite programming language cookie -->
<%
    //the default ..if there are no cookie 
    String favLang="Java";

    //get the cookie from the browser request
    Cookie[] theCookies =request.getCookies();
    
    //find our favourite language cookie 
    if(theCookies !=null)
    {
    	for(Cookie tempCookie :theCookies)
    	{
    		if("myApp.favouriteLanguage".equals(tempCookie.getName()))
    		{
    			favLang=tempCookie.getValue();
    			break;
    		}
    	}
    }
%>
<!--  now a personalize page .. use the favLang variable -->

<h4>New Books for <%= favLang %></h4>
<ul>
  <li>blah balh balh </li>
   <li>blah balh balh </li>
</ul>

<h4>Latest news report  for <%= favLang %></h4>
<ul>
  <li>blah balh balh </li>
   <li>blah balh balh </li>
</ul>

<h4>Hot Jobs for for <%= favLang %></h4>
<ul>
  <li>blah balh balh </li>
   <li>blah balh balh </li>
</ul>

<hr>
<a href="13cookies-personalize-form.html">Personalize the Page</a>
</body>
</html>