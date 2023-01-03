package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import hooks.KarateHooks;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class ExamplesTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:examples")
            .hook(new KarateHooks()).parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
