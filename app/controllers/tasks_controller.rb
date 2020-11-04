require  "byebug"

class TasksController < ApplicationController

  def index
    @task = Task.new
  end


  def create
    @task = Task.new(params.require(:task).permit(:chapter,:keyword,:description))
    #@task= params.require(:task).permit(:chapter,:keyword,:description)
    #@task.keyword= params.require(:task).permit(:keyword)
    #@task.description= params.require(:task).permit(:description)
    byebug
    if @task.save
      flash[:notice]= "New task has been created successfully!}"
      redirect_to("/people/index")

    else
      show_error("Some error occured unfortunately..try again!",'/tasks/index')
    end

  end

  private  ## has to be the bottom of the page not to let other method as private one
  def show_error (error_message, return_to_address)
    flash[:notice]= error_message
    render(return_to_address)
  end


end
