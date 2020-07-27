require 'rails_helper'

describe "user can visit the search page" do
  scenario "and see the closest electric fuel station to them" do
    visit '/'
    select 'Turing', from: :location
    click_on 'Find Nearest Station'
    expect(current_path).to eq(search_path)

    expect(page).to have_css('#name')

    expect(page).to have_css('#address')
      address = find('#address').text
      expect(address).to_not be_empty
    expect(page).to have_css('#fuel_type')
      fuel_type = find('#fuel_type').text
      expect(fuel_type).to_not be_empty
    expect(page).to have_css('#access_times')
      access_times = find('#access_times').text
      expect(access_times).to_not be_empty
    expect(page).to have_css('#distance')
      distance = find('#distance').text
      expect(distance).to_not be_empty
    expect(page).to have_css('#travel_time')
      travel_time = find('#travel_time').text
      expect(travel_time).to_not be_empty
    expect(page).to have_css('#directions')
      directions = find('#directions').text
      expect(directions).to_not be_empty
  end
end

# Then I should see the closest electric fuel station to me.
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Access Times
# I should also see:
# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1 min)
# - The direction instructions to get to that fuel station
#   "Turn left onto Lawrence St Destination will be on the left"
