function fn() {
  var config = {
    host: karate.properties['host'],
    db: karate.properties['db'],
    pass: karate.properties['pass']
  }
  return config;
}