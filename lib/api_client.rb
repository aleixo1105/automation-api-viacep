require 'net/http'
require 'net/http'
require 'json'

class ApiClient
  def self.get(url)
    uri = URI(url)
    Net::HTTP.get_response(uri)
  end
end
