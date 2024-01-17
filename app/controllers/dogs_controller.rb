class DogsController < ApplicationController
	def index
  end

  def fetch_dog
  	breed = params[:breed].downcase
    response = DogApi.fetch_image(params[:breed])
    @image = response["message"]
    @status = response["status"]
  end
end
