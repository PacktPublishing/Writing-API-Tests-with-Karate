package examples.java;

import com.intuit.karate.junit5.Karate;

class MockServerRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("mockserver").relativeTo(getClass());
    }    

}
