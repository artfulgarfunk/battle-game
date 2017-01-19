require 'spec_helper'

feature "Attack" do

  scenario "attack second" do
    sign_in_and_play
    click_button "ATTACK"
    expect(page).to have_content "Ben HP: 90"
    expect(page).to have_content "Dylan HP: 100"
    expect(page).to have_content "Dylan vs. Ben"
    click_button "ATTACK"
    expect(page).to have_content "Ben HP: 90"
    expect(page).to have_content "Dylan HP: 90"
    expect(page).to have_content "Ben vs. Dylan"
  end
end
