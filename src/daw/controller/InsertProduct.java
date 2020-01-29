package daw.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daw.model.bean.ProductBean;
import daw.model.dao.ProductDao;


public class InsertProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		ProductBean pb = new ProductBean();
				
		pb.setDenumire(request.getParameter("denumire"));
		
		pb.setPret(Integer.parseInt(request.getParameter("pret")));
		
		pb.setCantitate(Integer.parseInt(request.getParameter("cantitate")));
		
		
		
		int pbEdit = ProductDao.insert(pb);
		if(pbEdit>0) {
			response.sendRedirect("ProductListServlet?msgEdit=ok");
		}else {
			response.sendRedirect("ProductListServlet?msgEdit= error");
		}
	}
	}

