package servlet;

import java.io.IOException;
import java.util.ArrayList;
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			response.sendRedirect("/simpleBC/LoginServlet");
			return;
		}
		request.setCharacterEncoding("UTF-8");
		String date = request.getParameter("DATE");
		String month = request.getParameter("MONTH");
		String year = request.getParameter("YEAR");

		request.setAttribute("date",date );//ページ上部の日付用
		request.setAttribute("month",month );
		request.setAttribute("year",year );
		System.out.println("date:" +date +"month" + month);

		// リクエストパラメータを取得する
		String test = request.getParameter("NUM");
		System.out.println(test);
		int num = Integer.parseInt(test);
		DsDAO dsdao = new DsDAO();

		 //sessionIDからID特定
		IdpwDAO iDao = new IdpwDAO();
		String sid = String.valueOf(session.getAttribute("id"));
		String id = iDao.checkid(sid);

		Date ymd = new Date(date,month,year);
		List<Ds> dsList = new ArrayList<Ds>(); //リスト格納用

		if (dsdao.delete(num)) {	// 削除成功
			dsList = dsdao.listdisplay(ymd,id);
			request.setAttribute("dsList",dsList);
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
