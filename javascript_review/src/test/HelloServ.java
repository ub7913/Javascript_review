package test;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServ
 */
//@WebServlet(urlPatterns ={ "/hello", "/deptSelect "},
//			loadOnStartup=1 )//웹에서 주소창에 쓰일 이름
public class HelloServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServ() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		System.out.println("init 실행");
	}



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service 실행");
		System.out.println("client ip: "+request.getRemoteAddr());
		System.out.println("client agent: " + request.getHeader("User-Agent"));
		System.out.println("uri: " + request.getRequestURI());
		System.out.println("url: " + request.getRequestURL());
		System.out.println("query string: " + request.getQueryString());
		
		// TODO Auto-generated method stub
		DeptDAO dao = new DeptDAO();
		int id = Integer.parseInt(request.getParameter("id"));//주소창에서 hello뒤에 ?id=값을 입력하면 그 값에 맞는 결과를 나타낸다.
		DeptVO dept = dao.selectOne(new DeptVO(id));
		request.setAttribute("dept", dept);
		request.getRequestDispatcher("deptSelect.jsp")
			   .forward(request, response);
	}

}
