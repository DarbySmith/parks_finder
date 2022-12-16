class ParkFacade
  def self.park_finder(state)
    data = ParkService.park_finder(state)
    data[:data].map do |park_info|
      Park.new(park_info)
    end
  end
end