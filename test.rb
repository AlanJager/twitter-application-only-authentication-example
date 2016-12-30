require 'mechanize'
require 'json'
require 'base64'
require 'yaml'
require_relative 'request'
require_relative 'auth'
require_relative 'search'
require_relative 'user'
require_relative 'utils'



agent = Mechanize.new()
p "invoke auth()"
settings = YAML.load_file('settings.yml')

p settings['consumer_key']
p settings['user_agent']
p settings['consumer_secret']

auth_url = "https://api.twitter.com/oauth2/token"
auth_body = "grant_type=client_credentials"
auth_data = {
  'Host' => 'api.twitter.com',
  'User-Agent' => settings['user_agent'],
  'Authorization' => "Basic " + Base64.strict_encode64(settings['consumer_key'] + ":" + settings['consumer_secret']),
  'Content-Type' => 'application/x-www-form-urlencoded;charset=UTF-8', 
  'Content-Length' => '29',
  'Accept-Encoding' => 'gzip'
}
p auth_data['Authorization']

p JSON.parse(agent.post(auth_url, auth_body, auth_data).body)['access_token']