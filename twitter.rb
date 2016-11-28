require 'mechanize'
require 'json'
require 'base64'
require 'yaml'
require_relative 'auth'
require_relative 'utils'

agent = Mechanize.new()

token = auth(agent)

# request timelines
# request_timeline(agent, token)

# request user
# request_user(agent, token, anju_inami)

