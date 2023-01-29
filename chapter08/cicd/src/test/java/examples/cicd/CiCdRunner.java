package examples.cicd;

import com.intuit.karate.junit5.Karate;

class CiCdRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("cicd").relativeTo(getClass());
    }    

}
