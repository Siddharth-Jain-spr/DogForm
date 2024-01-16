class DogsController < ApplicationController
	def index
  end

  def fetch_dog
  	breed = params[:breed].downcase
  	uri = URI("https://dog.ceo/api/breed/#{breed}/images/random")
    response = Net::HTTP.get(uri)
    parsed_response = JSON.parse(response)
    @image = parsed_response["message"]
    @status = parsed_response["status"]
  end
end
