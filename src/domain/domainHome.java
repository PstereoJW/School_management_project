package domain;

import java.util.ArrayList;

/**
 * Create by PstereoM on 2018/5/4
 **/
public class domainHome {
    private ArrayList<String> sql1=new ArrayList<>();

    public void setSql1(ArrayList<String> sql1) {
        this.sql1 = sql1;
    }

    public ArrayList<String> getSql1() {
        return sql1;
    }

    public ArrayList<String> addData(){
        ArrayList<String> sql1=new ArrayList<>();
        sql1.add("SELECT SNAME,SSEX,CLASS FROM STUDENT");
        sql1.add("SELECT DISTINCT TDEPART FROM TEACHER");
        sql1.add("SELECT * FROM STUDENT");
        for(int i=0;i<sql1.size();i++){
            System.out.println(sql1.get(i));
        }
        return sql1;
    }
}
