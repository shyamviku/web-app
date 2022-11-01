

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bankingmethods.AdminMethods;
import bankingmethods.UserMethods;
import bankingpojo.AccountPojo;
import bankingpojo.CustomerPojo;
import exceptionhandling.CustomException;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserMethods userHelper = new UserMethods();
	AdminMethods adminHelper = new AdminMethods();

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//		// TODO Auto-generated method stub
	//		response.getWriter().append("Served at: ").append(request.getContextPath());
	//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String parameter = request.getParameter("button");

		switch(parameter){
		case "login.jsp":{
			int userId=Integer.parseInt(request.getParameter("userid"));
			String pass = request.getParameter("password");
			try {
			String role = userHelper.userLogin(userId,pass);			
				if(role.equals("CUSTOMER")) {				
					HttpSession session =request.getSession(true);
					session.setAttribute("customerId", userId);
					request.getRequestDispatcher("jsp/customer.jsp").forward(request, response);
					CustomerPojo customerpojo = userHelper.getUserDetails(userId).get(userId);
					request.setAttribute("name",customerpojo.getName());
					request.setAttribute("mobile",customerpojo.getMobileNo());
					request.setAttribute("aadhar", customerpojo.getAadharId());
					request.setAttribute("pan",customerpojo.getPanNumber());
					request.setAttribute("email",customerpojo.getEmail());
					
				}else{
					request.getRequestDispatcher("jsp/admin.jsp").forward(request, response);
					
				}
				} catch (CustomException e) {
					request.setAttribute("error",e.getMessage());
					request.getRequestDispatcher("jsp/login.jsp").forward(request, response);
					e.printStackTrace();
				}
			break;
		}
		case "userDetails.jsp":{
			HttpSession session =request.getSession(false);
			int userId= (int) session.getAttribute("customerId");
			try {
			CustomerPojo customerpojo = userHelper.getUserDetails(userId).get(userId);
			request.setAttribute("id",userId);
			request.setAttribute("name",customerpojo.getName());
			request.setAttribute("mobile",customerpojo.getMobileNo());
			request.setAttribute("aadhar", customerpojo.getAadharId());
			request.setAttribute("pan",customerpojo.getPanNumber());
			request.setAttribute("email",customerpojo.getEmail());
			request.getRequestDispatcher("jsp/userDetails.jsp").forward(request, response);
			} catch (CustomException e) {
			e.printStackTrace();
		}
			break;
		}
		case "SAVE":{
			HttpSession session =request.getSession(false);
			int userId= (int) session.getAttribute("customerId");
			try {
			long mobile=Long.parseLong(request.getParameter("mobile"));
			String email=request.getParameter("email");
			userHelper.modifyUserDetails(userId, mobile, email);
			} catch (CustomException e) {
				request.setAttribute("error",e.getMessage());
				e.printStackTrace();
			}request.getRequestDispatcher("jsp/userDetails.jsp").forward(request, response);
			break;			
		}
		case "myAccount.jsp":{
			HttpSession session =request.getSession(false);
			int userId= (int) session.getAttribute("customerId");
			try {
				Map<Integer,Map<Long,AccountPojo>> map =userHelper.getAccountDetails(userId);
				Map<Long,AccountPojo> map1 = map.get(userId);
				request.setAttribute("map1", map1);
			} catch (CustomException e) {	
				e.printStackTrace();
			}
			request.getRequestDispatcher("jsp/myAccount.jsp").forward(request, response);
			break;
		}
		case "withdrawRequest.jsp":{
			HttpSession session =request.getSession(false);
			int userId= (int) session.getAttribute("customerId");
			try {
				List<Long> list=userHelper.getUserAccounts(userId);
				System.out.println(list);
				request.setAttribute("list", list);
			} catch (CustomException e) {	
				request.setAttribute("error", e.getMessage());
			}
				request.getRequestDispatcher("jsp/withdrawRequest.jsp").forward(request, response);
			break;
		}
		case "REQUEST WITHDRAW":{
			HttpSession session =request.getSession(false);
			int userId= (int) session.getAttribute("customerId");
			try {
			long acNo=Long.parseLong(request.getParameter("select"));
			double amount = Double.parseDouble(request.getParameter("amount"));
			userHelper.userWithdrawRequest(userId, acNo, amount);
			} catch (CustomException e) {	
				request.setAttribute("error", e.getMessage());
			}
				request.getRequestDispatcher("jsp/withdrawRequest.jsp").forward(request, response);
			break;
		}
		case "requests.jsp":{
			request.getRequestDispatcher("jsp/requests.jsp").forward(request, response);
			break;
		}
		case "createCustomer.jsp":{
			request.getRequestDispatcher("jsp/createCustomer.jsp").forward(request, response);
			break;
		}
		case "createAccount.jsp":{
			request.getRequestDispatcher("jsp/createAccount.jsp").forward(request, response);
			break;
		}
		case "searchAccount.jsp":{
			request.getRequestDispatcher("jsp/searchAccount.jsp").forward(request, response);
			break;
		}
		case "searchCustomer.jsp":{
			request.getRequestDispatcher("jsp/searchCustomer.jsp").forward(request, response);
			break;
		}
		case "viewTransaction.jsp":{
			request.getRequestDispatcher("jsp/viewTransaction.jsp").forward(request, response);
			break;
		}
		case "modifyDetails.jsp":{
			request.getRequestDispatcher("jsp/modifyDetails.jsp").forward(request, response);
			break;
		}
		
		case "deposit.jsp":{
			request.getRequestDispatcher("jsp/deposit.jsp").forward(request, response);
			break;
		}
		case "accountManipulate.jsp":{
			request.getRequestDispatcher("jsp/accountManipulate.jsp").forward(request, response);
			break;
		}
		case "transfer.jsp":{
			request.getRequestDispatcher("jsp/transfer.jsp").forward(request, response);
			break;
		}
		case "changePassword.jsp":{
			request.getRequestDispatcher("jsp/changePassword.jsp").forward(request, response);
			break;
		}
		}

	}

}
