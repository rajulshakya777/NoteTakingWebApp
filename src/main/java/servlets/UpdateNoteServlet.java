
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.Note;
import utility.HibernateFactory;

public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int noteId = (int) request.getSession().getAttribute("edit_note_id");
		
		Session session = HibernateFactory.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		String updatedNoteTitle = request.getParameter("title");
		String updatedNoteContent = request.getParameter("content");
		
		System.out.println(noteId);
		System.out.println(updatedNoteTitle);
		System.out.println(updatedNoteContent);
		
		Note note = session.get(Note.class, noteId);
		note.setTitle(updatedNoteTitle);
		note.setContent(updatedNoteContent);
		
		tx.commit();
		session.close();
		
		// Clear the session attributes
		request.getSession().removeAttribute("edit_note_id");
		request.getSession().removeAttribute("edit_note_title");
		request.getSession().removeAttribute("edit_note_content");
		response.sendRedirect("view_notes.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
