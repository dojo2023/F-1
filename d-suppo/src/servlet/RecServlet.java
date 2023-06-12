package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RecServlet
 */
@WebServlet("/RecServlet")
public class RecServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			response.sendRedirect("/d-suppo/LoginServlet");
			return;
		}
		// 管理ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/recad.jsp");
		dispatcher.forward(request, response);
	}
}
//  @Override
//  protected void doPost(HttpServletRequest request, HttpServletResponse response)
//          throws ServletException, IOException {
//      // リクエストパラメータを取得する
//      request.setCharacterEncoding("UTF-8");
//      int recad = Integer.parseInt(request.getParameter("drink"));
//
//      if (recad == 0) {
//          //吞む人用ページにフォワードする
//          RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/reca.jsp");
//          dispatcher.forward(request, response);
//      } else {
//          //吞まない人用ページにフォワードする
//          RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/recd.jsp");
//          dispatcher.forward(request, response);
//}}