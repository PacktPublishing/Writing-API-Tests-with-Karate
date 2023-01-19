package examples.mockserver;

import com.intuit.karate.junit5.Karate;

class MocksRunner {
    
    @Karate.Test
    Karate testMocks() {
        return Karate.run("testmocks").relativeTo(getClass());
    }    

}
