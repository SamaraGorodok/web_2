package lab;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
@WebServlet(name = "ControllerServlet", value = "/ControllerServlet")
public class ControllerServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

//        session.setAttribute("startTime", new Date());
//        MyBean bean = new MyBean();
//        bean.addResult(new Result(0.0,0.0,0.0,true,"123","213"));
//        session.setAttribute("MyBean",bean);
        String x = req.getParameter("x");
        String y = req.getParameter("y");
        String r = req.getParameter("r");

        if (x != null && y != null & r != null) {
            String path = "/check";
            req.getRequestDispatcher("/check").forward(req, resp);
            session = req.getSession();
        } else {
            if (req.getMethod().equals("DELETE")) {
                req.getRequestDispatcher("/clear").forward(req, resp);

            } else {
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
            }
        }

    }
}
