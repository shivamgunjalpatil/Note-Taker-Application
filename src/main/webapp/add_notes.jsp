<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Note</title>
  <%@include file="all_js_css.jsp"%>
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, #ff8a00, #e52e71); /* Colorful gradient */
      color: #fff;
      margin: 0;
      padding: 0;
    }

    .add-note-container {
      max-width: 600px;
      margin: 30px auto;
      padding: 20px;
      background: #ffffff;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      color: #333;
    }

    .add-note-container h1 {
      text-align: center;
      color: #2c3e50;
      margin-bottom: 20px;
    }

    .form-group label {
      color: #2c3e50;
      font-size: 1.1rem;
    }

    .form-control {
      border-radius: 8px;
      padding: 10px;
      font-size: 1rem;
      margin-bottom: 15px;
    }

    .btn {
      font-size: 1.2rem;
      padding: 12px 30px;
      border-radius: 50px;
      background: #3498db;
      color: #fff;
      text-transform: uppercase;
      box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
      transition: background 0.3s, transform 0.2s;
    }

    .btn:hover {
      background: #2980b9;
      transform: translateY(-5px);
    }
  </style>
</head>
<body>
  <div class="container">
    <%@include file="navbar.jsp"%>
    <div class="add-note-container">
      <h1>Add a New Note</h1>
      <form action="SaveNoteServlet" method="post">
        <div class="form-group">
          <label for="title">Note Title</label>
          <input type="text" class="form-control" id="title" name="title" placeholder="Enter note title" required>
        </div>
        <div class="form-group">
          <label for="content">Note Content</label>
          <textarea class="form-control" id="content" name="content" rows="8" placeholder="Enter note content" required></textarea>
        </div>
        <div class="text-center">
          <button type="submit" class="btn btn-success">Save Note</button>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
