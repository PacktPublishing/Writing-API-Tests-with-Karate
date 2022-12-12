package examples.users;

import com.intuit.karate.junit5.Karate;

class FilesRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }    

}
