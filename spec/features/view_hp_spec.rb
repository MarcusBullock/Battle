require 'spec_helper'

feature 'View HP' do
  scenario '-> lets players see their hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Marcus'
    fill_in :player_2_name, with: 'The World'
    click_button 'Submit'
    expect(page).to have_content 'Marcus: 100HP'
  end
end
