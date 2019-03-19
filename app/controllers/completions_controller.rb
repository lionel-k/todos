class CompletionsController < ApplicationController
  def create
    current_user.todos.find(params[:id]).touch :completed_at
    redirect_to root_path
  end
end
