package examples.retry;

import com.intuit.karate.junit5.Karate;

class RetryRunner {
    
    @Karate.Test
    Karate testKarateObject() {
        return Karate.run("retry").relativeTo(getClass());
    }    

}
