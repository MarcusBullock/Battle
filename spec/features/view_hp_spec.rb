require 'spec_helper'

feature 'VIEW HP' do
  scenario '-> lets players see their hit points' do
    sign_in_and_play
    expect(page).to have_content 'Marcus: 100HP'
  end
end
