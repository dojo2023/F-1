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
import dao.IdpwRegistDAO;
import model.Idpw;
import model.Result;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/DeletePwServlet")
public class DeletePwServlet extends HttpServlet {
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

        // pW変更ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/chengepw.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String pw = request.getParameter("PW");

		IdpwDAO iDao = new IdpwDAO();
		IdpwRegistDAO iDaoR = new IdpwRegistDAO();
        //sessionIDからID特定
		HttpSession session = request.getSession();
        String sid = String.valueOf(session.getAttribute("id"));
		String id = iDao.checkid(sid);
        if(iDao.isLoginOK(new Idpw(id, pw))){//現在のパスワード確認
		    if (iDaoR.deletePw(id)) {	// 更新処理
			    request.setAttribute("result",
			    new Result("削除成功！", "今までありがとうございました", "/d-suppo/LogoutServlet"));

			    // 結果ページにフォワードする
			    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result2.jsp");
			    dispatcher.forward(request, response);
		    }
        	}else{
            request.setAttribute("result",
			    new Result("削除失敗！", "パスワードが違います、メニューに戻ります", "/d-suppo/MenuServlet"));

			    // 結果ページにフォワードする
			    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
			    dispatcher.forward(request, response);
        }
	}
}
