<%@ page import="java.util.*" %>
<html>

<body>

<!-- step 1: create  a HTML FORM -->
<form action="12To-DoList.jsp">
        Add new item: <input type="text" name="theItem"/>
        
        <input type="submit" name="submit"/>
    
</form>


<!-- STEP 2: ADD NEW ITEM TO "tO dO" LIST -->

<%
     //get the to-do list from the session
     List<String> items=(List<String>) session.getAttribute("myToDoList");
     // downcast object to list string as the data will be a string 
     
     //if the to do item dosen't exist,then create a new one 
     if (items == null)
     {
    	 items=new ArrayList<String>();
    	 session.setAttribute("myToDoList",items);
    	 //Thsi will add lsit to the session
     }
     //see if there is form data to add
     String theItem= request.getParameter("theItem");
     //This will take care of duplicatee and adding previous data when reloading
     boolean isItemNotEmpty =theItem != null && theItem.trim().length()>0;
     boolean isItemNotDuplicate =theItem != null && !items.contains(theItem.trim());
     
     if(isItemNotEmpty && isItemNotDuplicate)
     {
    	 items.add(theItem.trim());
     }
%>
<!-- step 3: Display all "To Do" item from session -->
<hr>
<b>To Do List:</b>
<ol>
<%   for (String temp:items)
	{
	out.println("<li>"+temp+"</li>");
	}
	%>
</ol>
</body>

</html>