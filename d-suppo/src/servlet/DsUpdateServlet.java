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
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String DIETNAME = request.getParameter("DIETNAME");
		String CALORIE = request.getParameter("CALORIE");
		String DIETCOST = request.getParameter("DIETCOST");
		String WEIGHT = request.getParameter("WEIGHT");


		// 登録処理を行う
				DsDAO card = new DsDAO();
				if (card.insert(new Ds(DIETNAME,CALORIE, DIETCOST, WEIGHT))) {	// 登録成功
					request.setAttribute("result",
					new Result("登録成功！", "レコードを登録しました。", "/d-suppo/DsServlet"));
				}
				else {												// 登録失敗
					request.setAttribute("result",
					new Result("登録失敗！", "レコードを登録できませんでした。", "/d-suppo/DsServlet"));
				}
				// 結果ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
				dispatcher.forward(request, response);	}
	}

