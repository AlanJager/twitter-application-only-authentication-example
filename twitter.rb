require 'json'
require 'base64'
require 'yaml'
require_relative 'request'
require_relative 'auth'
require_relative 'search'
require_relative 'user'
require_relative 'utils'

class Twitter
  attr_reader :agent
  attr_reader :token
  attr_reader :search
  attr_reader :user
  attr_reader :utils
  

  def initialize(agent, token)
    @agent = agent
    @token = token

    @search = Search.new(agent, token)
    @user = User.new(agent, token)
    @utils = Utils.new(agent, token)
  end
end