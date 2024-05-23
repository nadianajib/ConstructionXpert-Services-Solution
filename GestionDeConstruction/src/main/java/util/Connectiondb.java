package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connectiondb {

    private static final String HOST = "localhost";
    private static final int PORT = 2002;
    private static final String DB_NAME = "construction";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "admin";

    public static Connection getConnection()
    {
        Connection connection =null ;

        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.getMessage();
        }
        try {
            connection = DriverManager.getConnection(String.format("jdbc:postgresql://%s:%d/%s", HOST, PORT, DB_NAME), USERNAME, PASSWORD);
        } catch (SQLException se)
        {
            se.printStackTrace();

        }
        return connection;
    }













}
