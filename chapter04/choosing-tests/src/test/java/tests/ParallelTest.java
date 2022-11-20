package tests;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class ParallelTest {

    @Test
    void testAll() {
        Results results = Runner.path("classpath:tests").parallel(4);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

    @Test
    void testSmoke() {
        Results results = Runner.path("classpath:tests").tags("@smoke").parallel(4);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
