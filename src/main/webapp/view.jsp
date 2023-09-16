<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View</title>
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
            color: purple;
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
    <p class="blink text-center"> View your content here. </p>
</body>
</html>
       </div>
       
       <div class="row">
       
       <div class="col-12">
       
       
       
       <%
       Session s=FactoryProvider.getFactory().openSession();
       Query q=s.createQuery("from User");
       List<User>list=q.list();
       for(User user:list)
       {
       %>
       <div class="container">
     <!--   <div class="card  mt-3" >
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Writer name is </h5>
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div> -->

<div class="card mt-3">
  <img class="card-img-top" style="max-width:100px;" src="image/paint-palette.gif" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title" style="color:Green">Title:<%= user.getTitle() %></h5>
    <p class="card-text" style="font-family: cursive;"><%= user.getContent() %></p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><b>Writer: </b><i><%= user.getWritername() %></i></li>
    <li class="list-group-item"><b>Category: </b><i><%= user.getCategory() %></i></li>
    <li class="list-group-item"><b>Added Date: </b><%= user.getAddeddate() %></li>
  </ul>
  <div class="card-body">
    <a href="DeleteServlet?user_id=<%= user.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?user_id=<%= user.getId() %>" class="btn btn-primary">Update</a>
  </div>
</div>
</div>
       
       <% 
       }
       
       s.close();
    %>
    </div>
    
    </div>
    
       
</body>
</html>