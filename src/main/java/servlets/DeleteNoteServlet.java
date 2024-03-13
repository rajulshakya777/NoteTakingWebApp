package servlets;

import java.io.IOException;
import entities.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import utility.HibernateFactory;


public class DeleteNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			Session session = HibernateFactory.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			Note note = session.get(Note.class, noteId);
			session.delete(note); 
			tx.commit();
			session.close();
			response.sendRedirect("view_notes.jsp");
		} catch (Exception e) {
			log("Notes could not be deleted",e);			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
