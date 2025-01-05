require 'net/http'
require 'json'

Given('I make a GET request to {string}') do |cep|
  @cep = cep
  @url_completa = "#{BASE_URL}#{@cep}/json/"
  
  uri = URI.parse(@url_completa)

  @response = Net::HTTP.get_response(uri)

  @body = JSON.parse(@response.body)

end


Then('the logradouro should be {string}') do |logradouro|
  expect(@body["logradouro"]).to eq(logradouro)
end

Then('the DDD should be {string}') do |ddd|
  expect(@body["ddd"]).to eq(ddd)
end

