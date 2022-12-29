package examples.tags;

import com.intuit.karate.junit5.Karate;

class TagsRunner {
    
    @Karate.Test
    Karate testKarateObject() {
        return Karate.run("tags").relativeTo(getClass());
    }    

}
