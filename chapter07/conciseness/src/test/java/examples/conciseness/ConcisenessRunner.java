package examples.conciseness;

import com.intuit.karate.junit5.Karate;

class ConcisenessRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("conciseness").relativeTo(getClass());
    }    

}
