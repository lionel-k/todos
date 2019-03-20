require 'rails_helper'

feature 'User marks a todo as incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo('Wash Clothes')

    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).not_to show_completed_todo('Wash Clothes')
    expect(page).to show_todo('Wash Clothes')
    expect(page).to_not have_button('Mark incomplete')
  end
end
