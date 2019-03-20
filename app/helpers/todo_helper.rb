module TodoHelper
  def completion_button(todo)
    if todo.completed?
      button_to 'Mark incomplete', incomplete_todo_path(todo), method: :delete
    else
      button_to 'Mark complete', complete_todo_path(todo)
    end
  end
end
