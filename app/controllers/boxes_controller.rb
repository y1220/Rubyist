class BoxesController < ApplicationController
  def index

  end

  def new
    @box= Box.new
  end

  def create
    @box = Box.new(params.require(:box).permit(:title,:page_id))
    #@box = Box.new(params.require(:box).permit(:title))
    #@task= params.require(:task).permit(:chapter,:keyword,:description)
    #@task.keyword= params.require(:task).permit(:keyword)
    #@task.description= params.require(:task).permit(:description)
    #byebug
    if @box.save
      flash[:notice]= "New box has been created, insert the content!"
      redirect_to("/contents/#{@box.id}/new")

    else
      show_error("Some error occured unfortunately..try again!",'/tasks/index')
    end

  end
end
