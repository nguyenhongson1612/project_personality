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
import model.Category_HE164042;
import model.Product_HE164042;

/**
 *
 * @author ADMIN
 */
public class ProductDAO extends DBContext{
    public List<Product_HE164042> getProductByCid(int cid) {
        List<Product_HE164042> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Product_HE164042]\n"
                + "WHERE 1=1";
        if(cid!=0) {
            sql += " and cid="+cid;
        }
        try{
            PreparedStatement st = conn.prepareStatement(sql);
//            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryDAO d= new CategoryDAO();
                Category_HE164042 c = d.getCategoryById(rs.getInt("cid"));
                Product_HE164042 p = new Product_HE164042(rs.getString("id"), rs.getString("name"), rs.getInt("quantity"), rs.getDouble("price"), rs.getString("releaseDate"), rs.getString("describe"), rs.getString("image"), c);
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        }

        return list;
    }
    
    public List<Product_HE164042> getAllProduct() {
        List<Product_HE164042> list = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Product_HE164042]";
        try{
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryDAO d= new CategoryDAO();
                Category_HE164042 c = d.getCategoryById(rs.getInt("cid"));
                Product_HE164042 p = new Product_HE164042(rs.getString("id"), rs.getString("name"), rs.getInt("quantity"), rs.getDouble("price"), rs.getString("releaseDate"), rs.getString("describe"), rs.getString("image"), c);
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        }

        return list;
    }
    
    public List<Product_HE164042> search(String key){
        List<Product_HE164042> list = new ArrayList<>();
        String sql = "select * from Product_HE164042 where 1=1";
        if(key != null && !key.equals("")){
            sql += " and name like N'%"+key+"%'";
        }

        try{
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryDAO d = new CategoryDAO();
                Category_HE164042 c= d.getCategoryById(rs.getInt("cid"));
                Product_HE164042 p = new Product_HE164042(rs.getString("id"), rs.getString("name"), rs.getInt("quantity"), rs.getDouble("price"), rs.getString("releaseDate"), rs.getString("describe"), rs.getString("image"), c);
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product_HE164042> filter(int price, int cid){
        List<Product_HE164042> list = new ArrayList<>();
        String sql = "select * from Product_HE164042 where 1=1";
        if(cid!=0) {
            sql += " and cid="+cid;
        }
        if(price==1) {
            sql += " and price <= 200";
        }
        if(price==2) {
            sql += " and price > 200 and price <= 400";
        }
        if(price==3) {
            sql += " and price > 400 and price <= 600";
        }
        if(price==4) {
            sql += " and price > 600 and price <= 800";
        }
        if(price==5) {
            sql += " and price > 800 and price <= 1000";
        }
        if(price==6) {
            sql += " and price > 1000";
        }

        try{
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryDAO d = new CategoryDAO();
                Category_HE164042 c= d.getCategoryById(rs.getInt("cid"));
                Product_HE164042 p = new Product_HE164042(rs.getString("id"), rs.getString("name"), rs.getInt("quantity"), rs.getDouble("price"), rs.getString("releaseDate"), rs.getString("describe"), rs.getString("image"), c);
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    public Product_HE164042 getProductDetail(String pid){
        Product_HE164042 p = null ;
        String sql = "select * from Product_HE164042 where id = ?";
        try{
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, pid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                CategoryDAO d = new CategoryDAO();
                Category_HE164042 c= d.getCategoryById(rs.getInt("cid"));
                p = new Product_HE164042(rs.getString("id"), rs.getString("name"), rs.getInt("quantity"), rs.getDouble("price"), rs.getString("releaseDate"), rs.getString("describe"), rs.getString("image"), c);

            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return p;
    }
    
    public List<Product_HE164042> getRelative(int cid, String pid){
        List<Product_HE164042> list = new ArrayList<>();
        String sql = "select * from Product_HE164042 where cid = ? and id != ?";
        try{
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, cid);
            st.setString(2, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryDAO d = new CategoryDAO();
                Category_HE164042 c= d.getCategoryById(rs.getInt("cid"));
                Product_HE164042 p = new Product_HE164042(rs.getString("id"), rs.getString("name"), rs.getInt("quantity"), rs.getDouble("price"), rs.getString("releaseDate"), rs.getString("describe"), rs.getString("image"), c);
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
//    public static void main(String[] args) {
//        ProductDAO d = new ProductDAO();
//        Product_HE164042 p =d.getProductDetail("AT001");
//        System.out.println(p.getName());
//    }
}

