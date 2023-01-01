package examples.tags;

import com.intuit.karate.junit5.Karate;

class ValueTagsRunner {
    
    @Karate.Test
    Karate testValueTags() {
        return Karate.run("value_tags").tags("@car=audi").relativeTo(getClass());
    }
}
