package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.IdpwDAO;
import model.Idpw;
import model.LoginUser;
import model.Result;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ログインページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");

		// ログイン処理を行う
		IdpwDAO iDao = new IdpwDAO();

		if (iDao.isLoginOK(new Idpw(id, pw))) {	// ログイン成功
			// セッションスコープにIDを格納する-------------------------------------------
			HttpSession session = request.getSession();
			session.setAttribute("id", new LoginUser(id));//session.getAttribute("id")で取得

			String sid = String.valueOf(session.getAttribute("id")); //sessionid?に紐づけ,(String)でもいい？
			iDao.sIdSet(sid,id);
			/*if(iDao.AdminLoginOK(sid)){
				// 管理者サーブレットにリダイレクトする
				response.sendRedirect("/simpleBC/AdminmenuServlet");
			}else{*/
			// メニューサーブレットにリダイレクトする
			response.sendRedirect("/d-suppo/MenuServlet");
			//}
		}
		else {									// ログイン失敗
			// リクエストスコープに、タイトル、メッセージ、戻り先を格納する
			request.setAttribute("result",
			new Result("ログイン失敗！", "IDまたはPWに間違いがあります。", "/d-suppo/LoginServlet"));

			// 結果ページにフォワードする
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
			dispatcher.forward(request, response);
		}
	}
}
