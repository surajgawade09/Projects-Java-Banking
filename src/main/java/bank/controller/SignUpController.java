package bank.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.dao.BankDao;
import bank.dao.BankDaoImpl;
import bank.model.NewCustomer;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int accno=Integer.parseInt(request.getParameter("accno"));
		String custname=request.getParameter("custname");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		float accbalance=Float.parseFloat(request.getParameter("accbal"));
		
		NewCustomer cust=new NewCustomer(accno, custname, username, password, accbalance);
		BankDao bank=new BankDaoImpl();
		int i=bank.RegisterUser(cust);
		HttpSession session=request.getSession();
		String str="Account not Created";
		if(i>0)
		{
			response.sendRedirect("Home.jsp");
			
		}
		else
		{
			session.setAttribute("error2", str);
			response.sendRedirect("SignUp.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
