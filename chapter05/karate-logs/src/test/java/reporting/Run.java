package reporting;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class Run {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:reporting")
            .dryRun(false).outputJunitXml(true).parallel(2);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
