class DonesController < ApplicationController
  def index
    @done = Done.new(task_id: params[:task_id])
    @done.save
    redirect_to("/tasks/todo")
  end



  def destroy
    @done = Done.find_by(task_id: params[:task_id])
    @done.destroy
    redirect_to("/tasks/todo")
  end
end
