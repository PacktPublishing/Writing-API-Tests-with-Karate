package examples.hooks;

import com.intuit.karate.junit5.Karate;

import hooks.KarateHooks;

class HooksRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("hooks").hook(new KarateHooks()).relativeTo(getClass());
    }    

}
