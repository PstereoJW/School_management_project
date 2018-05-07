package Demo;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;
import dao.StudentDao;
import domain.Student;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

public class test {
    QueryRunner qr=new TxQueryRunner();
    public static void main(String[] args)
    {
        StudentDao customerDao=new StudentDao();
        QueryRunner qr=new TxQueryRunner();
        try {
            String sql="delete from student where sno=?";
            String sno="1";
            qr.update(sql,sno);
        }catch (Exception e){
            throw new RuntimeException(e);
        }

    }
}
