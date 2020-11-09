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
    #byebug
    if @content.save
      flash[:notice]= "New box has been created, insert the content!"
      redirect_to("/contents/#{@content.id}/edit")
    else
      show_error("Some error occured unfortunately..try again!",'/tasks/todo')
    end

  end

  def edit
    @content2 = Content.find_by(id: params[:content_id])
    @contents= Content.where(box_id: Content.find_by(id: params[:content_id]).box_id)
    @content = Content.new
  end

  def update
    @tasks = Task.all
    @content = Content.new
    @content.line= params.require(:content).permit(:line,:content_type,:box_id)[:line]
    @content.box_id= Content.find_by(id: params[:content_id]).box_id
    @content.content_type= ContentType.find_by(name: params.require(:content).permit(:line,:content_type,:box_id)[:content_type]).id
    #byebug
    if @content.save
      flash[:notice]= "New box has been created, insert the content!"
      redirect_to("/contents/#{@content.id}/edit")
    else
      show_error("Some error occured unfortunately..try again!",'/tasks/index')
    end

  end
  def destroy
    @content = Content.find_by(id: params[:content_id])
    bid=@content.box_id

    if @content.destroy
      @last = Content.find_by(box_id: bid)
      byebug
      if @last.nil?
        @box= Box.find_by(id: bid)
        pid= @box.page_id
        @image = Image.find_by(box_id: bid)
        if @image
          @image.destroy #if @image
        end
        @box.destroy
        flash[:notice]= "deleted!"
        page = Page.find_by(id: pid)
        redirect_to("/pages/c#{page.chapter_id}/p#{page.id}")
      else
        flash[:notice]= "deleted!"
        content2 = Content.where(box_id: bid).last
        redirect_to("/contents/#{content2.id}/edit")
      end
    else
      show_error("Some error occured!", "/contents/#{@content.id}/edit")
    end
  end

  private  ## has to be the bottom of the page not to let other method as private one
  def show_error (error_message, return_to_address)
    flash[:notice]= error_message
    render(return_to_address)
  end
end
