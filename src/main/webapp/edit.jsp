<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="com.entities.Note"%>
<%@ page import="com.helper.FactoryProvider"%>
<!DOCTYPE html>
<html>
<head>
  <title>Edit Note</title>
  <%@include file="all_js_css.jsp"%>
  <style>
    .form-container {
      max-width: 600px;
      margin: 30px auto;
      padding: 20px;
      background: #ffffff;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .form-container h1 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 1.8rem;
      color: #007bff;
    }
  </style>
</head>
<body>
  <div class="container">
    <%@include file="navbar.jsp"%>
    <div class="form-container">
      <h1>Edit Your Note</h1>
      <%
        int noteId = Integer.parseInt(request.getParameter("note_id").trim());
        Session s = FactoryProvider.getFactory().openSession();
        Note note = (Note) s.get(Note.class, noteId);
      %>
      <form action="UpdateServlet" method="post">
        <input type="hidden" name="noteId" value="<%=note.getId()%>">
        <div class="form-group">
          <label for="title">Note Title</label>
          <input type="text" class="form-control" id="title" name="title" value="<%=note.getTitle()%>" required>
        </div>
        <div class="form-group">
          <label for="content">Note Content</label>
          <textarea class="form-control" id="content" name="content" rows="8" required><%=note.getContent()%></textarea>
        </div>
        <div class="text-center">
          <button type="submit" class="btn btn-primary">Save Changes</button>
        </div>
      </form>
      <% s.close(); %>
    </div>
  </div>
</body>
</html>
