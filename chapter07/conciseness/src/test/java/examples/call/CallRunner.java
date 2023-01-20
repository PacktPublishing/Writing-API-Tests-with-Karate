package examples.call;

import com.intuit.karate.junit5.Karate;

class CallRunner {
    
    @Karate.Test
    Karate testConciseness() {
        return Karate.run("call").relativeTo(getClass());
    }
}
