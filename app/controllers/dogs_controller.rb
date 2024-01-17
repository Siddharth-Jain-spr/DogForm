class DogsController < ApplicationController
	def index
  end

  def fetch_dog
    @response = DogApi.fetch_image(params[:breed].to_s.downcase)
  end
end
