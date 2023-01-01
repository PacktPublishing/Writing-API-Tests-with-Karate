package examples.xpath_jsonpath;

import com.intuit.karate.junit5.Karate;

class XPathJSONPathRunner {
    
    @Karate.Test
    Karate testXPath() {
        return Karate.run("xpath").relativeTo(getClass());
    }    

    @Karate.Test
    Karate testJSONPath() {
        return Karate.run("jsonpath").relativeTo(getClass());
    }
}
