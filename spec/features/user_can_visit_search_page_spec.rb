require 'rails_helper'

describe "user can visit the search page" do
  scenario "and see the closest electric fuel station to them" do
    visit '/'
    select 'Turing', from: :location
    click_on 'Find Nearest Station'
    expect(current_path).to eq(search_path)

    expect(page).to have_css('#name')
    expect(page).to have_css('#address')
    expect(page).to have_css('#fuel_type')
    expect(page).to have_css('#access_times')
    expect(page).to have_css('#distance')
    expect(page).to have_css('#travel_time')
    expect(page).to have_css('#directions')
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
