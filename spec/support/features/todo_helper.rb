module Features
  def create_todo(todo_title)
    click_link 'Add a new todo'
    fill_in 'Title', with: todo_title
    click_on 'Create Todo'
  end

  def show_todo(todo_title)
    have_css('.todos li', text: todo_title)
  end

  def show_completed_todo(todo_title)
    have_css('.todos li.completed', text: todo_title)
  end
end
