require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    create_todo('Wash Clothes')

    expect(page).to show_todo('Wash Clothes')
  end
end
