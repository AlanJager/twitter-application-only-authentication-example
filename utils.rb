
class Utils
  attr_reader :agent
  attr_reader :token

  attr_reader :apis

  def initialize(agent, token)
    @agent = agent
    @token = token

    @apis = [
      'request_timeline',
      'list'
    ]
  end

  def list(screen_name)
    url = 'https://api.twitter.com/1.1/lists/list.json?screen_name=' + screen_name
    request(@agent, @token, url)
  end

  def members(screen_name, slug = '', owner_screen_name = 'twitterapi', cursor = -1)
    url = 'https://api.twitter.com/1.1/lists/members.json?slug=' + slug.to_s + '&owner_screen_name=' + owner_screen_name.to_s + '&cursor=' + cursor.to_s
    request(@agent, @token, url)
  end
end
