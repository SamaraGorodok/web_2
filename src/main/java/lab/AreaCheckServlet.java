package lab;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/check")
public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Double x,y,r;

        x=toDouble(req.getParameter("x"));
        y=toDouble(req.getParameter("y"));
        r=toDouble(req.getParameter("r"));

        log("in check:" + x + " " + y + " " + r);
        boolean boolResult=check(x,y,r);
        Date startTime=new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
        MyBean myBean = (MyBean) session.getAttribute("MyBean");
        if (myBean==null){
            myBean = new MyBean();
        }
        Result result = new Result(x,y,r,boolResult,dateFormat.format(new Date().getTime()),dateFormat.format(new Date().getTime()-startTime.getTime()));
        log(String.valueOf(result.getX()));
        myBean.addResult(result);
        session.setAttribute("MyBean",myBean);
        log(String.valueOf(myBean.getResults().size()));
        req.getRequestDispatcher("table.jsp").include(req,resp);


    }

    private double toDouble(String o){
        o=o.replace(",",".");
        return Double.parseDouble(o);
    }



    private boolean check(double x ,double y,double r){
        if (y >= 0) {
            if(x>=0){
                if(x*x + y*y <= r*r) {
                    return true;
                }
                else{
                    return false;
                }
            }else {
                if (y<=r && x>= -(r/2)){
                    return true;
                }else {
                    return false;
                }
            }

        }else {
            if(x>0){
               return false;
            }else {
                if(y>=(-x)-(r/2)&&y<=0&&x<=0){
                    return true;
                }
                return false;

            }

        }
    }
}

