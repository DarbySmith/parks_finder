class ParkService
  def self.park_finder(state)
    response = connection.get("parks?stateCode=#{state}")
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.connection
    Faraday.new(url: "https://developer.nps.gov/api/v1/") do |faraday|
      faraday.params["api_key"] = ENV['parks_api_key']
    end
  end
end