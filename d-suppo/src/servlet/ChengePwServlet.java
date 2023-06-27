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
@WebServlet("/ChengePwServlet")
public class ChengePwServlet extends HttpServlet {
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
		String pwnow = request.getParameter("PWNow");
		String pwnew = request.getParameter("PWNew");

		IdpwDAO iDao = new IdpwDAO();
		IdpwRegistDAO iDaoR = new IdpwRegistDAO();
        //sessionIDからID特定
		HttpSession session = request.getSession();
        String sid = String.valueOf(session.getAttribute("id"));
		String id = iDao.checkid(sid);
        if(iDao.isLoginOK(new Idpw(id, pwnow))){//現在のパスワード確認
		    if (iDaoR.updatePw(pwnew,id)) {	// 更新処理
			    request.setAttribute("result",
			    new Result("更新成功！", "メニューに戻ります", "/d-suppo/MenuServlet"));

			    // 結果ページにフォワードする
			    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
			    dispatcher.forward(request, response);
		    }
		    else {									// 更新失敗
			    request.setAttribute("result",
			    new Result("更新失敗！", "エラー、メニューに戻ります", "/d-suppo/MenuServlet"));
			    // 結果ページにフォワードする
			    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
			    dispatcher.forward(request, response);
		    }
        }else{  //現在のパスワードが違う
            request.setAttribute("result",
			    new Result("更新失敗！", "エラー、メニューに戻ります", "/d-suppo/MenuServlet"));

			    // 結果ページにフォワードする
			    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
			    dispatcher.forward(request, response);
        }
	}
}
