require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    click_link 'Add a new todo'
    fill_in 'Title', with: 'Wash Clothes'
    click_on 'Create Todo'

    expect(page).to have_css '.todos li', text: 'Wash Clothes'
  end
end
