class Search
  attr_reader :agent
  attr_reader :token

  def initialize(agent, token)
    @agent = agent
    @token = token
  end

  def search(screen_name, since_id = '', max_id = '', result_type = 'mixed', count = 10)
    url = 'https://api.twitter.com/1.1/search/tweets.json?q=' + screen_name.to_s + '&since_id=' + since_id.to_s + '&max_id=' + max_id.to_s + '&result_type=' + result_type.to_s + '&count=' + count.to_s
    request(@agent, @token, url)
  end
end
