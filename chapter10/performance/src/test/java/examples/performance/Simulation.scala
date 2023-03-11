package performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class CatsSimulation extends Simulation {

  val protocol = karateProtocol(
    "/cats/{id}" -> Nil,
    "/cats" -> pauseFor("get" -> 15, "post" -> 25)
  )

  protocol.nameResolver = (req, ctx) => req.getHeader("karate-name")
  protocol.runner.karateEnv("perf")

  val create = scenario("create").exec(karateFeature("classpath:mock/cats-create.feature"))
  val delete = scenario("delete").exec(karateFeature("classpath:mock/cats-delete.feature@name=delete"))

  setUp(
    create.inject(rampUsers(10) during (5 seconds)).protocols(protocol),
    delete.inject(rampUsers(5) during (5 seconds)).protocols(protocol)
  )

}