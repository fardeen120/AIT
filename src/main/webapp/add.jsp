<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>

 <div class="container-fluid p-0 m-0" > 
       <%@include file="navbar.jsp" %>
       
       <br>
       
     
        <style>
            .blink {
                font-size: 30px;
                font-weight: 800;
                animation: blinker 1.5s linear infinite;
                color: #0793eb;
                font-family: Brush Script;
            }
            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            }
        </style>
   

   
        <marquee class="blink">Welcome writer.Share your thoughts,shayris and much more</marquee>
        </div>
        <br>
        <div class="container" >
        <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="writername">Writer's name</label>
    <input required type="text" name="writername" class="form-control" id="writername" placeholder="Enter your name">
  </div>
  
  <div class="form-group">
    <label for="category">Nature of Post</label>
    <select  class="form-control" id="category" name="category">
      <option>Select from the list</option>
      <option>Shaayri</option>
      <option>Thought Of The day</option>
      <option>Article</option>
      <option>Poem</option>
      
    </select>
  </div>
  <div class="form-group">
    <label for="title">Title</label>
    <input required type="text" class="form-control" name="title" id="title" placeholder="Enter Your Title">
  </div>
  
  
  <div class="form-group">
    <label for="content">Content</label>
    <textarea required class="form-control" style="height:300px;" id="content" name="content" placeholder="Start Creating"></textarea>
  </div>
  
  <div class="container text-center">
  
  <button type="submit" ahref="index.jsp" class="btn btn-primary">Add</button>
  
  </div>
  
</form>
        
         </div>
         
    </body>

</html>
    
   

