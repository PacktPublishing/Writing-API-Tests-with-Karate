package examples.graphql;

import com.intuit.karate.junit5.Karate;

class GraphQLRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("graphql").relativeTo(getClass());
    }    

}
