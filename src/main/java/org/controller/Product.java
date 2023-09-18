package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.ProductBean;
import org.model.dao.BagDao;
import org.model.dao.JwelleryDao;
import org.model.dao.MensDao;
import org.model.dao.PerfumeDao;
import org.model.dao.ShoesDao;
import org.model.dao.WomensDao;

import com.oreilly.servlet.MultipartRequest;
/**
 * Servlet implementation class Product
 */
@WebServlet("/Product")
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String pid =request.getParameter("prodid");
		String pname =request.getParameter("prodname");
		String pcat =request.getParameter("catagory");
		String pqty =request.getParameter("qty");
		String pprice =request.getParameter("price");
		String remark =request.getParameter("remarks");
		String fname =request.getParameter("fname");
		int qty=Integer.parseInt(pqty);
		double price=Double.parseDouble(pprice);
		String path="C:\\Users\\admin\\Desktop\\MSIT(BCA)\\WebApplication\\ExampleProject\\src\\main\\webapp\\images"+fname;
		MultipartRequest m = new MultipartRequest(request, "C:\\\\Users\\\\admin\\\\Desktop\\\\Desktop\\\\JAVA EE\\\\WEB_APPLICATION\\\\SampleProject\\\\src\\\\main\\\\webapp\\\\images");
		ProductBean pb=new ProductBean();
		pb.setProdid(pid);
		pb.setProdname(pname);
		pb.setRemarks(remark);
		pb.setImage(path);
		pb.setQuantity(qty);
		pb.setPrice(price);
		MensDao md=new MensDao();
		WomensDao wd=new WomensDao();
		BagDao bd=new BagDao();
		JwelleryDao jd=new JwelleryDao();
		PerfumeDao pd=new PerfumeDao();
		ShoesDao sd=new ShoesDao();
		boolean status=false;
		if(pcat.equals("menscollection"))
			md.Insert(pb);
		else if(pcat.equals("womenscollection"))
			wd.Insert(pb);
		
	}

}
