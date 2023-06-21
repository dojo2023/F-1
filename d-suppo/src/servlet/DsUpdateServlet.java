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
 * Servlet implementation class DsServlet
 */
@WebServlet("/DsUpdateServlet")
public class DsUpdateServlet extends HttpServlet {
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

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String dietname = request.getParameter("DIETNAME");
		String calorie = request.getParameter("CALORIE");
		String dietcost = request.getParameter("DIETCOST");
		String weight = request.getParameter("WEIGHT");
		String date = request.getParameter("DATE");
		String month = request.getParameter("MONTH");
		String year = request.getParameter("YEAR");
		int timeslot = Integer.parseInt(request.getParameter("TIMESLOT"));

		request.setAttribute("date",date );//ページ上部の日付用
		request.setAttribute("month",month );
		request.setAttribute("year",year );

		Date ymd = new Date(date,month,year);
		Ds ds = new Ds(dietname,calorie,dietcost,weight,timeslot);
		DsDAO dsdao = new DsDAO();

		List<Ds> dsList = new ArrayList<Ds>(); //リスト格納用

		 //sessionIDからID特定
		IdpwDAO iDao = new IdpwDAO();
		String sid = String.valueOf(session.getAttribute("id"));
		String id = iDao.checkid(sid);

		// 登録処理を行う
				if (dsdao.insert(ymd,ds,id)) {	// 登録成功
					dsList = dsdao.listdisplay(ymd,id);
					request.setAttribute("dsList",dsList);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/dsResult.jsp");
					dispatcher.forward(request, response);
				}
				else {												// 登録失敗
					request.setAttribute("result",
					new Result("登録失敗！", "レコードを登録できませんでした。", "/d-suppo/DsServlet"));
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
					dispatcher.forward(request, response);
				}

			}
	}

