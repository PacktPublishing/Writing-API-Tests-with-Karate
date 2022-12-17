package examples.custom_functions;

import com.intuit.karate.junit5.Karate;

class FunctionsRunner {
    
    @Karate.Test
    Karate testCustomFunctions() {
        return Karate.run("functions").relativeTo(getClass());
    }    

}
