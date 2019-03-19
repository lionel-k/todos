require 'rails_helper'

feature 'User can mark a todo as complete' do
  scenario 'successfully' do
    sign_in
    click_link 'Add a new todo'
    fill_in 'Title', with: 'Wash Clothes'
    click_on 'Create Todo'

    click_on 'Mark complete'

    expect(page).to have_css '.todos li.completed', text: 'Wash Clothes'
  end
end
