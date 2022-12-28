function fn() {
  var config = {
  }
  karate.configure('retry', { count:2, interval:1000 });
  return config;
}