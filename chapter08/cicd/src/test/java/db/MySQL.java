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
        String connectionString =
            "jdbc:mysql://sql7.freesqldatabase.com/sqlxxx";
        String user = "sqlxxx";
        String password = "xxx";
        try (
            Connection c = DriverManager.getConnection(
                connectionString, user, password
            );
            Statement s = c.createStatement();
            ResultSet result = 
                s.executeQuery("select * from magicians")
        ) {
            List<Magician> magicians = new ArrayList<>();
            while (result.next()) {
                String name = result.getString("name");
                int birthyear = result.getInt("birthyear");
                magicians.add(new Magician(name, birthyear));
            }
            return JsonUtils.toJson(magicians);
        }
    }
}
