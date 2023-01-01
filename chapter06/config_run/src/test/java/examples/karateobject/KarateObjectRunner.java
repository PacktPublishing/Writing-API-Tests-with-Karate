package examples.karateobject;

import com.intuit.karate.junit5.Karate;

class KarateObjectRunner {
    
    @Karate.Test
    Karate testKarateObject() {
        return Karate.run("karateobject").relativeTo(getClass());
    }    

}
