package examples.java;

import com.intuit.karate.junit5.Karate;

class HooksRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("hooks").relativeTo(getClass());
    }    

}
