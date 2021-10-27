package lab;

import java.io.Serializable;
import java.text.DateFormat;
import java.util.Date;

public class Result implements Serializable {
    double x;
    double y;
    double r;
    String CurrentTime;
    String WorkTime;
    boolean result;
    public Result(Double x, Double y, Double r, Boolean result, String CurrentTime,String WorkTime) {
        this.x =x;
        this.y = y;
        this.r = r;
        this.result = result;
        this.CurrentTime = CurrentTime;
        this.WorkTime = WorkTime;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public double getR() {
        return r;
    }

    public String getCurrentTime() {
        return CurrentTime;
    }

    public String getWorkTime() {
        return WorkTime;
    }

    public boolean getResult() {
      return result;
    }

    public String getStringResult() {
        return "***";
    }
}
