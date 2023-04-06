/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account_HE164042;

/**
 *
 * @author ADMIN
 */
public class AccountDAO extends DBContext{
    public Account_HE164042 check(String username, String password){
        String sql = "select * from Account_HE164042 where username = ? and password =?";
        try{
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Account_HE164042 a =new Account_HE164042(rs.getString("username"), rs.getString("password"), rs.getInt("role"));
                return a;
            }
        }catch(SQLException e){
            System.err.println(e);
        }
        return null;
    }
    
    public Account_HE164042 creat(String username, String password){
        String sql = "select * from Account_HE164042 where username = ? and password =?";
        try{
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Account_HE164042 a =new Account_HE164042(rs.getString("username"), rs.getString("password"), rs.getInt("role"));
                return a;
            }
        }catch(SQLException e){
            System.err.println(e);
        }
        return null;
    }
    
    public Account_HE164042 checku(String username){
        String sql = "select * from Account_HE164042 where username = ?";
        try{
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Account_HE164042 a =new Account_HE164042(rs.getString("username"), rs.getString("password"), rs.getInt("role"));
                return a;
            }
        }catch(SQLException e){
            System.err.println(e);
        }
        return null;
    }
    
    public int check(String username){
        String sql = "select * from Account_HE164042 where username = ?";
        try{
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                int a= rs.getInt("id");
                return a;
            }
        }catch(SQLException e){
            System.err.println(e);
        }
        return 0;
    }
    
    public void insert(String user, String pass) {
        String sql = "INSERT INTO [dbo].[Account_HE164042] VALUES(?,?,?)";
        try {
            PreparedStatement st = conn.prepareStatement(sql);

            st.setString(1, user);
            st.setString(2, pass);
            st.setInt(3, 2);

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
//    public static void main(String[] args) {
//        AccountDAO a= new AccountDAO();
//        Account_HE164042 c= a.check("sa", "123");
//        System.out.println(c.getRole());
//    }
}
