package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.intuit.karate.JsonUtils;

public class MySQL {
    private final String host;
    private final String db;
    private final String pass;

    public MySQL(final String host, final String db, final String pass) {
        this.host = host;
        this.db = db;
        this.pass = pass;
    }

    public String getMagicians() throws Exception {
        String connectionString = "jdbc:mysql://" + host + "/" + db;
        try (
            Connection c = DriverManager.getConnection(
                connectionString, db, pass
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
