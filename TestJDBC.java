package com.demo;
import java.sql.*;
public class TestJDBC {
        public static void main(String[] args){
                String url="jdbc:oracle:thin:@10.232.71.29:1521:INATP02";
                try
                {
                        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
                        Connection conn=DriverManager.getConnection(url,"shobana","shobana");
                        if(conn != null)
                        {
                                System.out.println("Connection Established");
                        }
                        else
                        {
                                System.out.println("Connection failed");
                        }
                        Statement stmt=conn.createStatement();
                        ResultSet rs=stmt.executeQuery("Select * from employee_ak80");
                        while(rs.next()){
                        	System.out.println("ID "+rs.getInt(1));
                        	System.out.println("Name "+rs.getString(2));
                        	System.out.println("Salary "+rs.getDouble(3));
                        }
                        PreparedStatement pst = null;

                        try {
                                pst = conn.prepareStatement("insert into employee_ak80 values(?,?,?,?,?,?)");
                        } catch (SQLException e1) {
                                // TODO Auto-generated catch block
                                e1.printStackTrace();
                        } 
                        pst.setInt(1, 201);
                        pst.setString(2, "neeta");
                        pst.setDouble(3, 5000);
                        pst.setDate(4, null);
                        pst.setInt(5,30);
                        pst.setInt(6,112);
                        int n=pst.executeUpdate();
                        if(n>0)
                        {
                        	System.out.println("inserted");
                        	
                        }
                        else
                        {
                        	System.out.println("not inserted");
                        	
                        }
                        CallableStatement cst = conn.prepareCall("{call count_by_dept_ak80(?,?)}");
                        cst.setInt(1,10);
                        int cnt=0;
                        cst.registerOutParameter(2,java.sql.Types.INTEGER,cnt);
                        cst.execute();
                        cnt=cst.getInt(2);
                        System.out.println("Count :"+cnt);
                        stmt.close();
                        conn.close();
                }
                catch(SQLException sqle)
                {
                	sqle.printStackTrace();

                }
                finally
                {
                	
                }

        }
}