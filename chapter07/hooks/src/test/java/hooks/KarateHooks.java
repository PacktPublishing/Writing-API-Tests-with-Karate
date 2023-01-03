package hooks;

import com.intuit.karate.RuntimeHook;
import com.intuit.karate.core.ScenarioRuntime;
import com.intuit.karate.core.StepResult;

public class KarateHooks implements com.intuit.karate.RuntimeHook {
    @Override
    public boolean beforeScenario(ScenarioRuntime sr) {
        System.out.println("Scenario is starting: " + sr.scenario.getName());
        return RuntimeHook.super.beforeScenario(sr);
    }

    @Override
    public void afterStep(StepResult result, ScenarioRuntime sr) {
        if (result.isFailed()) {
            System.out.println("Step failed: " + result.getStep().getText());
        } else {
            System.out.println("Step passed: " + result.getStep().getText());
        }
        RuntimeHook.super.afterStep(result, sr);
    }

    @Override
    public void afterScenario(ScenarioRuntime sr) {
        System.out.println("Scenario finished: " + sr.scenario.getName() + ", result: " + sr.result);
        RuntimeHook.super.afterScenario(sr);
    }
}