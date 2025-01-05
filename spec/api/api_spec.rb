require 'spec_helper'
require 'net/http'
require 'json'

RSpec.describe 'API Client' do
  it 'fetches user data' do
    uri = URI("#{$base_url}#{cep}/json/")  
    response = Net::HTTP.get_response(uri)

    expect(response.code.to_i).to eq(200)
    body = JSON.parse(response.body)
    
  end
end