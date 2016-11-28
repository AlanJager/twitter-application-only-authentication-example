def auth(agent)
  settings = YAML.load_file('settings.yml')

  auth_url = "https://api.twitter.com/oauth2/token"
  auth_body = "grant_type=client_credentials"
  auth_data = {
    'Host' => 'api.twitter.com',
    'User-Agent' => settings['user_agent'],
    'Authorization' => "Basic " + Base64.strict_encode64(settings['consumer_key'] + ":" + settings['consumer_secret']),
    'Content-Type' => 'application/x-www-form-urlencoded;charset=UTF-8', 
    'Content-Length' => '29',
    'Accept-Encoding' => 'gzip'
  }

  return JSON.parse(agent.post(auth_url, auth_body, auth_data).body)['access_token']
end