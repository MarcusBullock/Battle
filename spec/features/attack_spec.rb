require 'spec_helper'

feature 'ATTACKING' do
  scenario '-> lets players attack' do
    sign_in_and_play
    click_button 'Attack!!!'
    expect(page).to have_content 'Marcus viciously attacked arch-nemesis, The World!!!'
  end

  scenario '-> HP decreases by random number when player is attacked' do
    sign_in_and_play
    click_button 'Attack!!!'
    expect(page).not_to have_content "The World's health is now at: 100HP"
  end

  scenario '-> Switches turns' do
    sign_in_and_play
    click_button 'Attack!!!'
    visit('/play')
    click_button 'Attack!!!'
    expect(page).not_to have_content "Marcus's health is now at: 100HP"
  end

end
