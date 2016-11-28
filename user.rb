class User
  attr_reader :agent
  attr_reader :token

  # attr_reader :follower_ids
  # attr_reader :follower_list
  # attr_reader :profile
  # attr_reader :income_friendship

  def initialize(agent, token)
    @agent = agent
    @token = token

    # @follower_ids = follower_ids()
    # @follower_list = follower_list()
    # @friend_ids = friend_ids()
    # @profile = profile()
    # @income_friendship = income_friendship()
  end

  # request follower's ids
  def follower_ids(screen_name, cursor = -1, count = 5000)
    url = 'https://api.twitter.com/1.1/followers/ids.json?cursor=' + cursor.to_s + '&screen_name=' + screen_name.to_s + '&count=' + count.to_s
    request(@agent, @token, url)
  end

  # request followers' list
  def follower_list(screen_name, cursor = -1, skip_status = true, include_user_entities = false)
    url = 'https://api.twitter.com/1.1/followers/list.json?cursor=' + cursor.to_s + '&screen_name=' + screen_name.to_s  + '&skip_status=' + skip_status.to_s  + '&include_user_entities=' + include_user_entities.to_s 
    request(@agent, @token, url)
  end

  # request friend's ids
  def friend_ids(screen_name, cursor = -1, count = 5000)
    url = 'https://api.twitter.com/1.1/friends/ids.json?cursor=' + cursor.to_s + '&screen_name=' + screen_name.to_s + '&count=' + count.to_s
    p @token
    request(@agent, @token, url)
  end

  # request friend's list
  def friend_list(screen_name, cursor = -1, skip_status = true, include_user_entities = false)
    url = 'https://api.twitter.com/1.1/friends/list.json?cursor=' + cursor.to_s + '&screen_name=' + screen_name.to_s  + '&skip_status=' + skip_status.to_s  + '&include_user_entities=' + include_user_entities.to_s 
    request(@agent, @token, url)
  end

  # request income friendship
  # TODO
  # def income_friendship
  #   url = 'https://api.twitter.com/1.1/friendships/incoming.json'
  #   request(@agent, @token, url)
  # end

  # request user profile 
  def profile(screen_name)
    url = 'https://api.twitter.com/1.1/users/show/' + screen_name + '.json'
    request(@agent, @token, url)
  end
end