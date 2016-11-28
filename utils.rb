def request_timeline(agent, token)
  url = 'https://api.twitter.com/1.1/statuses/user_timeline.json?count=100&screen_name=twitterapi'
  settings = YAML.load_file('settings.yml')

  data = {
    'Host' => 'api.twitter.com',
    'User-Agent' => settings['user_agent'],
    'Authorization' => "Bearer " + token,
    'Accept-Encoding' => 'gzip'
  }

  timelines = JSON.parse(agent.get(url, [], nil, data).body)
end
