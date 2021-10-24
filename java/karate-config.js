function fn() {
	var config = {
			env: env,
			baseUrl: 'https://reqres.in/api',
			name: "Vikash"
	}

	var env = karate.env;
	karate.log('karate.env system property was:', env);

	if (env == 'dev') {
		config.baseUrl = 'https://reqres.in/api'
	} else if (env == 'e2e') {
		config.baseUrl = 'https://reqres.in/api/e2e'
	}else{
		config.baseUrl = 'https://reqres.in/api/default'
	}
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);
	return config;
}