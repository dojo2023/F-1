package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RecdDAO;
import model.Recd;

/**
 * Servlet implementation class RecResultServlet
 */
@WebServlet("/RecResultServlet")
public class RecResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		int drink = Integer.parseInt(request.getParameter("DRINK"));
		int genre = Integer.parseInt(request.getParameter("genre[]"));
		int dish = Integer.parseInt(request.getParameter("dish[]"));
		int harvest = Integer.parseInt(request.getParameter("harvest[]"));

		if(drink == 0) {

		}
		else {
			// 検索処理を行う
			RecdDAO dDao = new RecdDAO();
			List<Recd> nonalcList = dDao.select(new Recd(genre, dish, harvest));
			// 検索結果をリクエストスコープに格納する
			request.setAttribute("nonalcList", nonalcList);
		}

		//提案結果ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/recResult.jsp");
		dispatcher.forward(request, response);
	}

}
