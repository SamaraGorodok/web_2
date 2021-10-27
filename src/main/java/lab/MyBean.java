package lab;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class MyBean implements Serializable {
    private List<Result> results = new LinkedList<>();

    public void setResults(List<Result> results) {
        this.results = results;
    }

    public List<Result> getResults() {
        return results;
    }

    public void addResult(Result result){
        results.add(result);
    }

    public MyBean(){
        results = new LinkedList<>();
    }
}
