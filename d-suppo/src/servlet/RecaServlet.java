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

import dao.RecaDAO;
import model.Reca;
/**
 * Servlet implementation class RecaServlet
 */
@WebServlet("/RecaServlet")
public class RecaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RecaServlet() {
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
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/reca.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String [] alc = request.getParameterValues("ALC[]");
		int category = Integer.parseInt(request.getParameter("CATEGORY[]"));
		//Reca reca = new Reca();
		RecaDAO recadao = new RecaDAO();
		List<Reca> cardListadd = new ArrayList<Reca>();

		int[] newAlc = new int[alc.length];

		while(true){
        for (int i = 0; i < alc.length; i++) {
			newAlc[i] = Integer.parseInt(alc[i]);
            // 検索処理を行う
            cardListadd.addAll(recadao.select(newAlc[i],category));
        	}
			if(recadao.distinct(cardListadd)){
				break;
			}else{
				cardListadd = new ArrayList<Reca>();
			}

		}
		// 検索結果をリクエストスコープに格納する
		request.setAttribute("cardList", cardListadd);

	    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/recResult.jsp");
	    dispatcher.forward(request, response);
    }
}
