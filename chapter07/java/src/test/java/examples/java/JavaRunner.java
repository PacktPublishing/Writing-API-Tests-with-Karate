package examples.java;

import com.intuit.karate.junit5.Karate;

class JavaRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("java").relativeTo(getClass());
    }    

}
