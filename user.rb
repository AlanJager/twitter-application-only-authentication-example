def request_user(agent, token, screen_name)
  url = 'https://api.twitter.com/1.1/users/show/' + screen_name + '.json'
  settings = YAML.load_file('settings.yml')

  data = {
    'Host' => 'api.twitter.com',
    'User-Agent' => settings['user_agent'],
    'Authorization' => "Bearer " + token,
    'Accept-Encoding' => 'gzip'
  }

  user = JSON.parse(agent.get(url, [], nil, data).body)
end
