package tests;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class ParallelTest {
    @Test
    void testProd() {
        Results results = Runner.path("classpath:tests").karateEnv("prod").parallel(4);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
