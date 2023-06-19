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

import dao.RecdDAO;
import model.Recd;

/**
 * Servlet implementation class RecaServlet
 */
@WebServlet("/RecdServlet")
public class RecdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RecdServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//呑む人用ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/recd.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String[] alc = request.getParameterValues("ALC[]");
		int category = Integer.parseInt(request.getParameter("CATEGORY[]"));
		//Reca reca = new Reca();
		RecdDAO recddao = new RecdDAO();
		List<Recd> cardListadd = new ArrayList<Recd>();

		int[] newAlc = new int[alc.length];

		while (true) {
			for (int i = 0; i < alc.length; i++) {
				newAlc[i] = Integer.parseInt(alc[i]);
				// 検索処理を行う
				cardListadd.addAll(recddao.select(newAlc[i], category));
			}
			if (recddao.distinct(cardListadd)) {
				break;
			} else {
				cardListadd = new ArrayList<Recd>();
			}

		}
		// 検索結果をリクエストスコープに格納する
		request.setAttribute("cardList", cardListadd);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/recResult.jsp");
		dispatcher.forward(request, response);
	}
}
