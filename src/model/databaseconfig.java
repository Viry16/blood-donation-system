package model;

import java.sql.*;

public class databaseconfig{
    public static void main(String[] args){
        Connection connection = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blood_donation", "root", ""
            );
            System.out.println("Connection Successful");
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
}
