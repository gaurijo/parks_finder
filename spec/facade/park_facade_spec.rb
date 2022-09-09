require 'rails_helper'

RSpec.describe ParkFacade do 
  it "gets data for parks by state", :vcr do 
    parks = ParkFacade.create_parks('TN')

    expect(parks[0]).to be_a(Park)
  end
end