class DogApi
  def self.fetch_image(breed)
    uri = URI("https://dog.ceo/api/breed/#{breed}/images/random")
    response = Net::HTTP.get(uri)
    return JSON.parse(response)
  end
end