require 'rubygems'
require 'dogapi'

api_key = '<YOUR_API_KEY>'
app_key = '<YOUR_APP_KEY>'

dog = Dogapi::Client.new(api_key, app_key)

host_name = 'test.host'
dog.update_tags(host_name, ["role:web", "environment:test"])