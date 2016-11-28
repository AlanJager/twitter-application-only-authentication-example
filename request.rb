def request(agent, token, url)
  settings = YAML.load_file('settings.yml')

  data = {
    'Host' => 'api.twitter.com',
    'User-Agent' => settings['user_agent'],
    'Authorization' => "Bearer " + token,
    'Accept-Encoding' => 'gzip'
  }

  user = JSON.parse(agent.get(url, [], nil, data).body)
end