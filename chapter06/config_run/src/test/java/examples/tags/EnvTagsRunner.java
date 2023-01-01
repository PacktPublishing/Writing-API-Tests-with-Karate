package examples.tags;

import com.intuit.karate.junit5.Karate;

class EnvTagsRunner {
    
    @Karate.Test
    Karate testEnvDev() {
        return Karate.run("env_tags").karateEnv("dev").relativeTo(getClass());
    }

    @Karate.Test
    Karate testEnvProd() {
        return Karate.run("env_tags").karateEnv("prod").relativeTo(getClass());
    }
}
