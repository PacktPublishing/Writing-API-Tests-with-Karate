package examples.ui;

import com.intuit.karate.junit5.Karate;

class UiRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("ui").relativeTo(getClass());
    }    

}
