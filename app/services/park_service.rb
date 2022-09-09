class ParkService 
  def self.conn 
    Faraday.new(url: "https://developer.nps.gov/api/v1/") do |faraday|
      faraday.params['api_key'] = ENV['parks_api_key']
    end
  end

  def self.get_parks(state)
    response = conn.get('parks', { stateCode: state})
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end

