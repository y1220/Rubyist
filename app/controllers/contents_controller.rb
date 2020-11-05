class ContentsController < ApplicationController
  def index
  end
  def new
    @content= Content.new
  end

  def create
    @content = Content.new(params.require(:content).permit(:type,:text,:box_id))

    if @content.save
      flash[:notice]= "New box has been created, insert the content!}"
      redirect_to("/parts/index")

    else
      show_error("Some error occured unfortunately..try again!",'/tasks/index')
    end

  end
end
