<%@page import="com.entities.User"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0" > 
       <%@include file="navbar.jsp" %>
       <br>
       <!DOCTYPE html>
<html>
<head>
    <title>Blinking feature using CSS</title>
    <style>
        .blink {
            font-size: 30px;
            animation: blinker 1.5s linear infinite;
            color: green;
            font-family: sans-serif;
        }
        @keyframes blinker {
            50% {
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <p class="blink text-center"> Edit your content here. </p>
</body>
</html>

   <% 
   
   int Userid =Integer.parseInt(request.getParameter("user_id"));
   Session s =FactoryProvider.getFactory().openSession();
   User user=(User)s.get(User.class, Userid);
   
   
   %>
       </div>
       
         <div class="container" >
        <form action="UpdateServlet" method="post">
        <input value="<%= user.getId() %>" name="UserId" type="hidden"/>
  <div class="form-group">
    <label for="writername">Writer's name</label>
    <input required type="text" name="writername" class="form-control" id="writername" placeholder="Enter your name"
    value="<%= user.getWritername() %>">
  </div>
  
  <div class="form-group">
    <label for="category">Nature of Post</label>
    <select   class="form-control" id="category" name="category" >
      <option><%= user.getCategory() %></option>
      <option>Select from the list</option>
      <option>Shaayri</option>
      <option>Thought Of The day</option>
      <option>Article</option>
      <option>Poem</option>
    
      
    </select>
  </div>
  <div class="form-group">
    <label for="title">Title</label>
    <input required type="text" class="form-control" name="title" id="title" placeholder="Enter Your Title"
    value="<%= user.getTitle() %>">
  </div>
  
  
  <div class="form-group">
    <label for="content">Content</label>
    <textarea required class="form-control" style="height:300px;" id="content" name="content" placeholder="Start Creating"><%= user.getContent()%>
    </textarea>
  </div>
  
  <div class="container text-center">
  
  <button type="submit" ahref="index.jsp" class="btn btn-success">Update</button>
  
  </div>
  
</form>
        
         </div>

</body>
</html>