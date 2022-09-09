require 'rails_helper'

RSpec.describe ParkService do 
  it "gets data for parks", :vcr do 
    parks = ParkService.get_parks('TN')

    expect(parks).to be_a(Array)
    expect(parks.count).to eq(15)
    expect(parks[0]).to be_a(Hash)
    expect(parks[0][:name]).to be_a(String)
    expect(parks[0]).to have_key(:description)
  end
end