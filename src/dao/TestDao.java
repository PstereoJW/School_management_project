package dao;

import cn.itcast.jdbc.TxQueryRunner;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;


import static org.apache.commons.dbutils.DbUtils.close;
import static utils_ex.DBManager.Close;
import static utils_ex.DBManager.getConnection;
import static utils_ex.ModelConvert.convertList;

/**
 * Create by PstereoM on 2018/4/24 11:27
 **/
public class TestDao {
    public static void main(String... args) throws NullPointerException{

        try {
            String sql1="SELECT count(*) " +
                    "FROM student " +
                    "where 1=1 ";
            Map<String,Object> params=new HashMap<>();
            params.put("sclass","1603" );
        String[] fields= homeField(sql1,params);

        }catch (Exception e){
            throw new RuntimeException("sno查询失败",e);
        }



    }

    public static String[] homeField(String sql1,Map<String,Object> params){
        Connection connection=null;
        ArrayList<String> field=new ArrayList<>();
        try {
            connection=getConnection();
            StringBuilder sql=new StringBuilder();
            sql.append(sql1);
            if (params!=null){//有参数才拼接
                for (Map.Entry<String,Object> param:params.entrySet()
                        ) {
                    if (!(param.getKey().contains("method"))&&!param.getValue().equals("")){
                        sql.append(" and " +param.getKey()+"="+"'"+param.getValue()+"'");
                    }

                }
            }


            PreparedStatement ps =connection.prepareStatement(sql.toString());
            ResultSet rs;
            rs=ps.executeQuery();
            List<LinkedHashMap<String,Object>> list=convertList(rs);
            /**
             * 多表查询结果的表头fields
             */
            String[] fields=list.get(0).keySet().toArray(new String[0]);//保留


            return fields;
        }catch (Exception e){
            throw new RuntimeException("作业查询错误",e);
        }
    }
}
