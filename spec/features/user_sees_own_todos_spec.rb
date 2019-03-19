require 'rails_helper'

feature 'User sees own todos' do
  scenario 'doesnt see the todos belonging to other users' do
    Todo.create(title: 'Read a book')

    sign_in_as 'someone_else@mail.com'
    expect(page).to_not have_css '.todos li', text: 'Read a book'
  end
end
