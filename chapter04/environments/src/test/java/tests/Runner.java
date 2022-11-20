package tests;

import com.intuit.karate.junit5.Karate;

public class Runner {
    @Karate.Test
    Karate dev() {
        // Runs the scenario with the dev environment
        return Karate.run("env-demo").karateEnv("dev").relativeTo(getClass());
    } 

    @Karate.Test    
    Karate prod() {
        // Runs the scenario with the prod environment
        return Karate.run("env-demo").karateEnv("prod").relativeTo(getClass());
    } 
}
