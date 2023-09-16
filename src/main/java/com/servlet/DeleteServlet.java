package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			int UserId=Integer.parseInt(request.getParameter("user_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			User user=(User)s.get(User.class, UserId);
			s.delete(user);
			tx.commit();
			s.close();
			response.sendRedirect("view.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
