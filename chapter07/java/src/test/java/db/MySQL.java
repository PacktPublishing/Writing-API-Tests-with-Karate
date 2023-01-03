package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.intuit.karate.JsonUtils;

public class MySQL {
    
    private Connection connect = null;
    private Statement statement = null;
    private ResultSet resultSet = null;

    public String getMagicians() throws Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            connect = DriverManager.getConnection(
                "jdbc:mysql://sql7.freesqldatabase.com/sql7587919?user=sql7587919&password=xxxxx");
            statement = connect.createStatement();
            resultSet = statement.executeQuery("select * from magicians");

            List<Magician> magicians = new ArrayList<>();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                int birthyear = resultSet.getInt("birthyear");
                magicians.add(new Magician(name, birthyear));
            }
            return JsonUtils.toJson(magicians);
        } catch (Exception e) {
            throw e;
        } finally {
            if (resultSet != null) { resultSet.close(); }
            if (statement != null) { statement.close(); }
            if (connect != null) { connect.close(); }
        }
    }
}
