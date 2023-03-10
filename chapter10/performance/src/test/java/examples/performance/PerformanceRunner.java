package examples.performance;

import com.intuit.karate.junit5.Karate;

class PerformanceRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("performance").relativeTo(getClass());
    }    

}
