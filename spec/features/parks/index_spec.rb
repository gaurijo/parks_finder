require 'rails_helper'

RSpec.describe "Parks" do 
  it "has a list of parks for a particular state selected", :vcr do 
    visit root_path 
    select 'Tennessee', from: 'state'
    click_button 'Find Parks'

    expect(page).to have_content('Park Name: ')
  end
end