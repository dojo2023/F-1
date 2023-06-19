package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ResultDsServlet
 */
@WebServlet("/ResultDsServlet")
public class ResultDsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ログインページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String date = request.getParameter("date");
		String month = request.getParameter("month");
		String year = request.getParameter("year");

		PrintWriter out = response.getWriter(); //データ取得確認用仮欄

		out.println("<html><head></head><body>");
		out.println("<p>date：" + date + "</p>");
		out.println("<p>month：" + month + "</p>");
		out.println("<p>year：" + year + "</p>");
        out.println("</body></html>");
*/

        // 管理ページにフォワードする
 		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/dsResult.jsp");
 		dispatcher.forward(request, response);

		}
	}