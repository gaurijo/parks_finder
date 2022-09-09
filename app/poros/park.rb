class Park 
  attr_reader :fullName, :id, :description, :directionsInfo, :standardHours
  def initialize(data)
    @id = data[:id]
    @description = data[:description]
    @fullName = data[:fullName]
    @directionsInfo = data[:directionsInfo]
    @standardHours = data[:standardHours]
  end
end