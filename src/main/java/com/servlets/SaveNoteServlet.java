package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Fetch title and content
            String title = request.getParameter("title");
            String content = request.getParameter("content");

            // Convert java.util.Date to java.sql.Date
            java.sql.Date sqlDate = new java.sql.Date(new Date().getTime());

            // Create a new Note object
            Note note = new Note(title, content, sqlDate);

            // Hibernate: Save the Note
            Session s = FactoryProvider.getFactory().openSession();
            Transaction tx = s.beginTransaction();
            s.persist(note);
            tx.commit();
            s.close();

            // Send response
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
            out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all notes</a></h1>");
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h1 style='text-align:center;color:red;'>An error occurred: " + e.getMessage() + "</h1>");
        }
    }
}
