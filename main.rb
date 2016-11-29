require 'mechanize'
require_relative 'Twitter'

agent = Mechanize.new()

token = auth(agent)

# request timelines
# request_timeline(agent, token)

# request user
# request_user(agent, token, 'anju_inami')

# request user following
# user = User.new(agent, token)
# p user.favorites('anju_inami')

twitter = Twitter.new(agent, token)
p twitter.search.search('anju_inami')

