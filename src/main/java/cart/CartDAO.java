package cart;

import DBConnection.ConnectionDB;
import business.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class CartDAO {
    public static List<Product> ListProduct(Connection conn){
        PreparedStatement ps = null;
        String sql = "select * from product";
        List<Product> list = new ArrayList<Product>();

        try {
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                String code = rs.getString(1);
                String desc = rs.getString(2);
                double price = rs.getDouble(3);

                Product product = new Product();

                product.setCode(code);
                product.setDescription(desc);
                product.setPrice(price);

                list.add(product);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
    public static Product getProduct(String productCode){
        Connection conn = ConnectionDB.CreateConnect();
        Product product = new Product();
        PreparedStatement ps = null;

        try {
            String sql = "select * from product where productcode = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, productCode);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                String code = rs.getString("productcode");
                String desc = rs.getString("description");
                double price = rs.getDouble("price");

                product.setCode(code);
                product.setDescription(desc);
                product.setPrice(price);
            }
            ps.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }
}
