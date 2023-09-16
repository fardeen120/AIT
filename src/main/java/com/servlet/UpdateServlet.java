package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String name = request.getParameter("writername");
			String category=request.getParameter("category");
			String title= request.getParameter("title");
			String content= request.getParameter("content");
			int Userid = Integer.parseInt(request.getParameter("UserId").trim());
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			User user=s.get(User.class, Userid);
			
			user.setWritername(name);
			user.setCategory(category);
			user.setTitle(title);
			user.setContent(content);
			user.setAddeddate(new Date());
			
			tx.commit();
			s.close();
			
			response.sendRedirect("view.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
