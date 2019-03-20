class CompletionsController < ApplicationController
  def create
    todo.complete!
    redirect_to root_path
  end

  private

  def todo
    current_user.todos.find(params[:id])
  end
end
