package daw.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daw.model.bean.ProductBean;
import daw.model.dao.ProductDao;

/**
 * Servlet implementation class UpdateProductServlet
 */
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		
		ProductBean pb = new ProductBean();
		pb.setId_Product(Integer.parseInt(id));
		
		pb.setDenumire(request.getParameter("denumire"));
		
		pb.setPret(Integer.parseInt(request.getParameter("pret")));
		
		pb.setCantitate(Integer.parseInt(request.getParameter("cantitate")));
		
		
		
		int pbEdit = ProductDao.update(pb);
		if(pbEdit>0) {
			response.sendRedirect("ProductListServlet?msgEdit=ok");
		}else {
			response.sendRedirect("ProductListServlet?msgEdit= error");
		}
	}

}
