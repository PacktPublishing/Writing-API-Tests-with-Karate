package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.intuit.karate.JsonUtils;

public class MySQL {  
    public String getMagicians() throws Exception {
        String connectionString = "jdbc:mysql://sql7.freesqldatabase.com/sqlxxxxxxx";
        String user = "sqlxxxxxxx";
        String password = "xxxxxxxxxx";
        try (
                Connection connect = DriverManager.getConnection(connectionString, user, password);
                Statement statement = connect.createStatement();
                ResultSet resultSet = statement.executeQuery("select * from magicians")
        ) {
            List<Magician> magicians = new ArrayList<>();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                int birthyear = resultSet.getInt("birthyear");
                magicians.add(new Magician(name, birthyear));
            }
            return JsonUtils.toJson(magicians);
        } catch (Exception e) {
            throw e;
        }
    }
}
