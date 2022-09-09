require 'rails_helper'

RSpec.describe Park do 
  it "exists and has attributes" do 
    response = JSON.parse(File.read('spec/fixtures/parks.json'), symbolize_names: true)
    park = Park.new(response)

    expect(park).to be_a(Park)
    expect(park.fullName).to eq(response[:fullName])
    expect(park.id).to eq(response[:id])
    expect(park.description).to eq(response[:description])
    expect(park.directionsInfo).to eq(response[:directionsInfo])
    expect(park.standardHours).to eq(response[:standardHours])
  end
end