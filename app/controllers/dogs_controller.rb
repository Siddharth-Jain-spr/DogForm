class DogsController < ApplicationController
	def index
  end

  def fetch_dog
  	DOG_API_BASE_URI = 'https://dog.ceo/api'
  	uri = URI("https://dog.ceo/api/breed/#{breed}/images/random")
    response = Net::HTTP.get(uri)

    JSON.parse(response)
  end
end
