package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DsDAO;
import model.Result;

/**
 * Servlet implementation class DeleteDsServlet
 */
@WebServlet("/DeleteDsServlet")
public class DeleteDsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			response.sendRedirect("/d-suppo/LoginServlet");
			return;
		}

		// 管理ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/ds.jsp");
		dispatcher.forward(request, response);
	}
	*/

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			response.sendRedirect("/simpleBC/LoginServlet");
			return;
		}

		// リクエストパラメータを取得する

		int num = Integer.parseInt(request.getParameter("NUM"));
		request.setCharacterEncoding("UTF-8");
		DsDAO dsdao = new DsDAO();

		if (dsdao.delete(num)) {	// 削除成功
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/dsResult.jsp");
			dispatcher.forward(request, response);
		}
		else {	// 削除失敗
			request.setAttribute("result",
			new Result("削除失敗！", "レコードを削除できませんでした。", "/d-suppo/DsServlet"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
			dispatcher.forward(request, response);
		}
	}

}
