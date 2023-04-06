/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User_HE164042;

/**
 *
 * @author ADMIN
 */
public class UserDAO extends DBContext {

    public User_HE164042 checkmail(String email) {
        String sql = "select * from User_HE164042 where email = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User_HE164042 a = new User_HE164042(rs.getInt("id"), rs.getString("name"), rs.getString("phone"), rs.getString("address"), rs.getString("email"));
                return a;
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }

    public void insert(int id, String name, String phone, String address, String email) {
        String sql = "insert into User_HE164042 values(?,?,?,?,?)";
        try {
            PreparedStatement st = conn.prepareStatement(sql);

            st.setInt(1, id);
            st.setString(2, name);
            st.setString(3, phone);
            st.setString(4, address);
            st.setString(5, email);

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public User_HE164042 getUser(int id) {
        String sql = "select * from User_HE164042 where id = ?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User_HE164042 a = new User_HE164042(rs.getInt("id"), rs.getString("name"), rs.getString("phone"), rs.getString("address"), rs.getString("email"));
                return a;
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }

    public void update(int id, String name, String phone, String address) {
        String sql = "UPDATE User_HE164042\n"
                + "   SET [name] = ?\n"
                + "      ,[phone] = ?\n"
                + "      ,[address] = ?\n"
                + " WHERE id =?";
        try {
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, phone);
            st.setString(3, address);
            st.setInt(4, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

//    public static void main(String[] args) {
//        UserDAO u = new UserDAO();
//        u.update(3, "son", "0123456789", "vttt");
//    }
}
