package examples.java;

import com.intuit.karate.junit5.Karate;

class DataDrivenRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("datadriven").relativeTo(getClass());
    }    

}
