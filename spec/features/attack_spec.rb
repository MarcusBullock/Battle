require 'spec_helper'

feature 'ATTACKING' do
  scenario '-> lets players attack' do
    sign_in_and_play
    click_button 'Attack!!!'
    expect(page).to have_content 'Marcus viciously attacked his arch-nemesis, The World!!!'
  end

  scenario '-> HP decreases by 20 when player is attacked' do
    sign_in_and_play
    click_button 'Attack!!!'
    expect(page).not_to have_content "The World's health is now at: 100HP"
    expect(page).to have_content "The World's health is now at: 80HP"
  end

end
