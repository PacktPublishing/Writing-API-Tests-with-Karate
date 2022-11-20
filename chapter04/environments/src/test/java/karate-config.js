function fn() {
  var env = karate.env;
  karate.log('karate.env system property is:', env);
  karate.log('userName property is:', userName);

  if (!env) {
    env = 'dev';
  }

  var config = {
    env: env,
    userName: karate.properties["userName"]
  }

  if (env == 'dev') {
    config.baseUrl = "devBaseUrl"
  } else if (env == 'prod') {
    config.baseUrl = "prodBaseUrl"
  }

  return config;
}