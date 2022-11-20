package tests;

import com.intuit.karate.junit5.Karate;

public class RunnerDifferentMethods {
    @Karate.Test
    Karate test1() {
        // Runs all scenarios in test1.feature
        return Karate.run("test1").relativeTo(getClass());
    } 

    @Karate.Test    
    Karate test2() {
        // Runs all scenarios in test2.feature
        return Karate.run("test2").relativeTo(getClass());
    } 

    @Karate.Test    
    Karate test1and2() {
        // Runs all scenarios in test1 and test2.feature
        return Karate.run("test1", "test2").relativeTo(getClass());
    } 

    @Karate.Test    
    Karate testSmokeTag() {
        // Runs all scenarios tagged with @smoke
        Karate k = Karate.run().relativeTo(getClass()).tags("smoke");
        return Karate.run().relativeTo(getClass()).tags("smoke");
    }
}
