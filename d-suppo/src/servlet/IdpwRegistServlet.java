package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IdpwRegistDAO;
import model.Idpw;
import model.Result;

/**
 * Servlet implementation class IdpwRegistServlet
 */
@WebServlet("/IdpwRegistServlet")
public class IdpwRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 新規登録ページにフォワードする
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/idpwRegist.jsp");
					dispatcher.forward(request, response);
	}
	// 新規登録の可否判定-> 登録
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");

		//入力したidpwが重複するか確認  NewIdpecheck
		IdpwRegistDAO registIdpw = new IdpwRegistDAO();
		if (registIdpw.NewIdpecheck(id)) {
			if(registIdpw.insertIdpw(new Idpw(id, pw))) {
			request.setAttribute("result",
					new Result("登録成功！", "ID,PWを登録しました。", "/d-suppo/LoginServlet"));
		    // 結果ページにフォワードする
		    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result2.jsp");
		    dispatcher.forward(request, response);}
			else {
			request.setAttribute("result",
					new Result("登録失敗！", "Id,PWを登録できませんでした", "/d-suppo/IdpwRegistServlet"));
		}
		}else {
			request.setAttribute("result",
					new Result("登録失敗！", "IDまたはPWが重複しています。", "/d-suppo/IdpwRegistServlet"));
		}
		// 結果ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
				dispatcher.forward(request, response);
		}
}


