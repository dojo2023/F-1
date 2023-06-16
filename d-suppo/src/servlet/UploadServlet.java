package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet") //以下アプロード設定アノテーション
@MultipartConfig(
//location = "C:/pleiades/upload/tmp/",
maxFileSize=1000000,
maxRequestSize=1000000,
fileSizeThreshold=1000000
)
public class UploadServlet extends HttpServlet {
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
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/upload.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String word = request.getParameter("word");

		//name属性がpictのファイルをPartオブジェクトとして取得
				Part part=request.getPart("pict");
				//ファイル名を取得
				String filename=part.getSubmittedFileName();//ie対応が不要な場合
				//String filename=Paths.get(part.getSubmittedFileName()).getFileName().toString();
				//アップロードするフォルダ
				String path= "C:/dojo6/d-suppo/WebContent/upload/" + filename;  //getServletContext().getRealPath("/upload");
				//実際にファイルが保存されるパス確認
				System.out.println(path);
				//書き込み
					part.write(path);

					path=getServletContext().getRealPath("/upload/");
					System.out.println(path + "/" +filename);
					path = path + "/" +filename;
					part.write(path);

				request.setAttribute("name",name);
				request.setAttribute("word", word);
				request.setAttribute("filename", filename);
				RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsp/uploadimg.jsp");
				rd.forward(request, response);
			}
	}


