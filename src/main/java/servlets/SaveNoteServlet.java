package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.Note;
import utility.HibernateFactory;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title,content,new Date());
			
			
			Session session = HibernateFactory.getSessionFactory().openSession();
			
			
			Transaction tx = session.beginTransaction();
			
		
			session.save(note);
			
			
			tx.commit();
			session.close();			
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;'>Note data saved!! successfully</h1>");
			out.println("<h1 style='text-align:center;color:red;'> <a href='view_notes.jsp'> View All notes</h1>");
			
			
		} catch (Exception e) {
			log("",e);			// TODO: handle exception
		}
		
		
		
//		response.getWriter().append(title).append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
