package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DsDAO;
import dao.IdpwDAO;
import model.Date;
import model.Ds;

/**
 * Servlet implementation class DsServlet
 */
@WebServlet("/DsServlet")
public class DsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String date = request.getParameter("date");
		String month = request.getParameter("month");
		String year = request.getParameter("year");

		//Date dmy = new Date(date,month,year);

		request.setAttribute("date",date );
		request.setAttribute("month",month );
		request.setAttribute("year",year );

		Date ymd = new Date(date,month,year); //年月日まとめ
		 //sessionIDからID特定
		IdpwDAO iDao = new IdpwDAO();
		String sid = String.valueOf(session.getAttribute("id"));
		String id = iDao.checkid(sid);

		DsDAO dsdao = new DsDAO();
		List<Ds> dsList = dsdao.listdisplay(ymd,id);
		request.setAttribute("dsList",dsList);

        // 管理ページにフォワードする
 		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/dsResult.jsp");
 		dispatcher.forward(request, response);

		}
}
