<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.query.Query"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="com.entities.Note"%>
<%@ page import="com.helper.FactoryProvider"%>
<!DOCTYPE html>
<html>
<head>
  <title>All Notes</title>
  <%@include file="all_js_css.jsp"%>
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background: linear-gradient(135deg, #ff8a00, #e52e71); /* Colorful gradient */
      color: #fff;
      margin: 0;
      padding: 0;
    }

    .note-card {
      margin: 15px 0;
      padding: 20px;
      background: #ffffff;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      color: #333;
    }

    .note-card h5 {
      color: #2c3e50;
      font-weight: bold;
    }

    .note-card p {
      color: #555;
    }

    .note-card small {
      display: block;
      margin-top: 10px;
      color: #888;
    }

    .btn {
      font-size: 1rem;
      padding: 10px 25px;
      border-radius: 50px;
      box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
      transition: background 0.3s, transform 0.2s;
    }

    .btn-primary {
      background-color: #3498db;
      color: #fff;
    }

    .btn-danger {
      background-color: #e74c3c;
      color: #fff;
    }

    .btn:hover {
      transform: translateY(-5px);
    }

    .text-center {
      text-align: center;
    }
  </style>
</head>
<body>
  <div class="container">
    <%@include file="navbar.jsp"%>
    <h1 class="text-center text-light my-4">Your Notes</h1>
    <%
      Session s = FactoryProvider.getFactory().openSession();
      Query<Note> q = s.createQuery("from Note", Note.class);
      List<Note> list = q.list();
      if (list.isEmpty()) {
    %>
      <div class="text-center my-5">
        <h3>No Notes Found</h3>
        <a href="add_notes.jsp" class="btn btn-success">Add a New Note</a>
      </div>
    <%
      } else {
        for (Note note : list) {
    %>
    <div class="note-card">
      <h5><%=note.getTitle()%></h5>
      <p><%=note.getContent()%></p>
      <small>Added on: <%=note.getAddedDate()%></small>
      <div class="text-right">
        <a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-sm btn-primary">Edit</a>
        <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-sm btn-danger">Delete</a>
      </div>
    </div>
    <%
        }
      }
      s.close();
    %>
  </div>
</body>
</html>
