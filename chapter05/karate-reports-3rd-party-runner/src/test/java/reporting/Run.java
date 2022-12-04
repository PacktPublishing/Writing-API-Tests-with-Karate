package reporting;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.trivago.cluecumber.core.CluecumberCore;
import com.trivago.cluecumber.engine.exceptions.CluecumberException;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class Run {

    @Test
    void testParallel() throws CluecumberException{
        Results results = Runner.path("classpath:reporting")
            .outputCucumberJson(true)
            .reportDir("target/myReport")
            .outputHtmlReport(false)         
            .parallel(2);

        new CluecumberCore.Builder().build()
            .generateReports(
                "target/myReport",
                "target/customReport");

        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
