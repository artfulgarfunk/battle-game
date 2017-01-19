require 'spec_helper'

feature "Attack" do
  scenario "attacking player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Dylan attacked Ben"
  end

  scenario "player 2 gets attacked" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Ben HP: 90"
  end

  scenario "player 2 to attack second" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Ben HP: 90"
    expect(page).to have_content "Dylan HP: 90"
  end 
end
