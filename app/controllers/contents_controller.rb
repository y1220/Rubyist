class ContentsController < ApplicationController
  def index
  end
  def new
    @content= Content.new
  end

  def create
    #@content = Content.new(params.require(:content).permit(:content_type,:text,:id))
    @tasks = Task.all
    @box= Box.new
    @content = Content.new
    @content.line= params.require(:content).permit(:line,:content_type,:box_id)[:line]
    @content.box_id= params[:box_id]
    # to search type it was necessary to register the value one by one
    @content.content_type= ContentType.find_by(name: params.require(:content).permit(:line,:content_type,:box_id)[:content_type]).id
    byebug
    if @content.save
      flash[:notice]= "New box has been created, insert the content!}"
      redirect_to("/contents/#{@content.id}/edit")

    else
      show_error("Some error occured unfortunately..try again!",'/tasks/todo')
    end

  end

  def edit
    @content2 = Content.find_by(id: params[:content_id])
    @content = Content.new

  end

  def update
    @content = Content.find(id: params[:id])
    @content_type= Content_type.find(name: params[:content_type])
    @content2 = Content.new(params.require(:content).permit(:type,:line,:box_id))

    if @content2.save
      flash[:notice]= "New box has been created, insert the content!}"
      redirect_to("/parts/index")

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
