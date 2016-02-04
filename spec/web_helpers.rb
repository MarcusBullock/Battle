def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Marcus'
  fill_in :player_2_name, with: 'The World'
  click_button 'Submit'
end
