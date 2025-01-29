package com.servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DeleteServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Fetch note ID from request
            int noteId = Integer.parseInt(request.getParameter("note_id").trim());

            // Hibernate session
            Session s = FactoryProvider.getFactory().openSession();
            Transaction tx = s.beginTransaction();

            // Retrieve and delete the note
            Note note = s.get(Note.class, noteId);
            if (note != null) {
                s.remove(note);
            }
            tx.commit();
            s.close();

            // Redirect to the notes page
            response.sendRedirect("all_notes.jsp");
        } catch (Exception e) {
            e.printStackTrace(); // Log exception for debugging
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while deleting the note.");
        }
    }
}
