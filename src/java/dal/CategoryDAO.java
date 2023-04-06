/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category_HE164042;

/**
 *
 * @author ADMIN
 */
public class CategoryDAO extends DBContext{
    
    public List<Category_HE164042> getAll(){
        List<Category_HE164042> list= new ArrayList<>();
        String sql= "select * from Category_HE164042";
        
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while(rs.next()) {
                Category_HE164042 c = new Category_HE164042(rs.getInt("id"), rs.getString("name"));
                list.add(c);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return list;
    }
    
    public Category_HE164042 getCategoryById(int id) {

        String sql = "select * from Category_HE164042 where id = ?";
        try {
            PreparedStatement pre = conn.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                Category_HE164042 c = new Category_HE164042(rs.getInt("id"), rs.getString("name"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

}
