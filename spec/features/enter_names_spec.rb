require 'spec_helper'

feature 'ENTER NAMES' do
  scenario '-> lets players enter and see their names on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Marcus vs. The World'
  end

end
