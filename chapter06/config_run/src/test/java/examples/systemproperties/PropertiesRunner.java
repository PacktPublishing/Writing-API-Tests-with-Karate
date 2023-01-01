package examples.systemproperties;

import com.intuit.karate.junit5.Karate;

class PropertiesRunner {
    
    @Karate.Test
    Karate testProperty() {
        return Karate.run("properties")
            .systemProperty("name", "Jane")
            .relativeTo(getClass());
    }
}
