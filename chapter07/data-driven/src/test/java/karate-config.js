function fn() {
  var tweety = { name: "Tweety", animal: "bird" }
  var config = {
    bird: karate.call('animal-title.feature', tweety)
  }
  return config;
}