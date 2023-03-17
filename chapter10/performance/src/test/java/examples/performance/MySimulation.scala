package examples.performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class MySimulation extends Simulation {

  val protocol = karateProtocol()
  protocol.nameResolver = (req, ctx) => req.getHeader("karate-name")
  protocol.runner.karateEnv("perf")

  val myScenario = scenario("My great Scenario")
    .exec(karateFeature(
      "classpath:examples/performance/performance.feature")
    )

  setUp(
    myScenario.inject(rampUsers(1000).during(10))
      .protocols(protocol)
  )
}
