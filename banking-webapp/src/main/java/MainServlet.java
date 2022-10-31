

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		case "admin.jsp":{
			request.getRequestDispatcher("jsp/admin.jsp").forward(request, response);
			break;
		}
		case "customer.jsp":{
			request.getRequestDispatcher("jsp/customer.jsp").forward(request, response);
			break;
		}
		case "userDetails.jsp":{
			request.getRequestDispatcher("jsp/userDetails.jsp").forward(request, response);
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
		case "myAccount.jsp":{
			request.getRequestDispatcher("jsp/myAccount.jsp").forward(request, response);
			break;
		}
		case "withdrawRequest.jsp":{
			request.getRequestDispatcher("jsp/withdrawRequest.jsp").forward(request, response);
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
