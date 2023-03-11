<html>

<body>

The student is confirmed: ${param.firstName } ${param.lastName }

<br><br>

The student country is: ${param.country }

<br><br>

Student Favourite Programming Language is/are: 

<ul>
<% 
String[] langs= request.getParameterValues("favouritebutton");

if(langs !=null) // if user dosent select anything then if will have a null pointer exception
{
for(String templang: langs)
{
	out.println("<li>"+ templang +"</li>");
}
}
%>
</ul>

</body>

</html>