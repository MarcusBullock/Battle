require 'spec_helper'

feature 'Enter names' do
  scenario '-> lets players enter and see their names on-screen' do
    visit('/')
    fill_in :player_1_name, with: 'Marcus'
    fill_in :player_2_name, with: 'The World'
    click_button 'Submit'
    expect(page).to have_content 'Marcus vs. The World'
  end

end
