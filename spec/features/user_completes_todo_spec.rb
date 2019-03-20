require 'rails_helper'

feature 'User can mark a todo as complete' do
  scenario 'successfully' do
    sign_in

    create_todo('Wash Clothes')

    click_on 'Mark complete'

    expect(page).to show_completed_todo('Wash Clothes')
    expect(page).to_not have_button('Mark complete')
  end
end
