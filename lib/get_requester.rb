require 'open-uri'
require 'net/http'

class GetRequester
  def initialize(url)
    @url = url
  end

  def get_response_body
    response = Net::HTTP.get_response(URI.parse(@url))
    response.body
  end

  def parse_json
    body = get_response_body
    JSON.parse(body)
  end
end
