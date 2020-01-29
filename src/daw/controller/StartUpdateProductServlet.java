package daw.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daw.model.bean.ProductBean;
import daw.model.dao.ProductDao;

public class StartUpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StartUpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currentId=request.getParameter("id");
		ProductBean pbEdit = ProductDao.findById(currentId);
		request.setAttribute("pbEdit", pbEdit);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Pages/editProduct.jsp");
	    dispatcher.forward(request, response);
	
	}

}
