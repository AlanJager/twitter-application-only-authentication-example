require 'mechanize'
require 'json'
require 'base64'
require 'yaml'
require_relative 'request'
require_relative 'auth'
require_relative 'user'
require_relative 'utils'

agent = Mechanize.new()

token = auth(agent)

# request timelines
# request_timeline(agent, token)

# request user
# request_user(agent, token, 'anju_inami')

# request user following
user = User.new(agent, token)
p user.friend_ids('anju_inami')

