package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			String name = request.getParameter("writername");
			String category=request.getParameter("category");
			String title= request.getParameter("title");
			String content= request.getParameter("content");
			User user = new User(name, category, title, content, new Date());
			
			System.out.println(user.getId() + " " + user.getWritername() + " " + user.getCategory() + " " + user.getTitle() + " " + user.getContent());
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(user);
			tx.commit();
			s.close();
			response.setContentType("text/html");
		    PrintWriter out=response.getWriter();
		    out.println("<h1 style = 'text-align:center;'>Content is added successfully</h1>");
		    out.println("<h1 style = 'text-align:center;'><a href ='view.jsp'>View all Content</a></h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
