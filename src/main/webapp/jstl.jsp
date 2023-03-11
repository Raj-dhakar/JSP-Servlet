<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%
 String[] cities={"Gwalior","Delhi"};
 pageContext.setAttribute("myCities", cities);
%>

<html>  

<body>  

<c:forEach var="tempCity" items="${myCities}">
    ${tempCity}<br/>
</c:forEach>
<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach>  
</body>  
</html>  