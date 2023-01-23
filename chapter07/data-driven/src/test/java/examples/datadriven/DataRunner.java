package examples.datadriven;

import com.intuit.karate.junit5.Karate;

class DataRunner {
    
    @Karate.Test
    Karate testConciseness() {
        return Karate.run("data").relativeTo(getClass());
    }
}
