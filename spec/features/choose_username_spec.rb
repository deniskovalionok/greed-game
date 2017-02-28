require 'rails_helper'

feature 'Choose username' do
  scenario 'Choose username' do
    visit '/'
    fill_in 'Username', with: 'hrabiel'
    click_on 'Continue'
    
    expect(page).to have_content 'hrabiel'
  end
end