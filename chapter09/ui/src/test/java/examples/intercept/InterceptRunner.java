package examples.intercept;

import com.intuit.karate.junit5.Karate;

class InterceptRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("intercept").relativeTo(getClass());
    }    

}