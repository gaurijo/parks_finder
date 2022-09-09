class ParkFacade 
  def self.create_parks(state) 
    parks = ParkService.get_parks(state)
    parks.map do |park|
      Park.new(park)
    end
  end
end