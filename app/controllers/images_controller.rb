require 'carrierwave/orm/activerecord'
class ImagesController < ApplicationController
  def index
  end

  def new
    @image=Image.new
  end

  def create

    #@image=Image.new(params.require(:image).permit(:pic))
    @image=Image.new(params.require(:image).permit(:pic, :box_id))
    @image.box_id= params[:box_id]
    my_file= params[:image][:pic]
    @image.pic= FileUploader.new
    @image.pic.store!(my_file)
    if @image.save!
      flash[:notice]= "Image has been saved!}"
      redirect_to("/pages/index")
      #redirect_to("/contents/#{@content.id}/edit")
    else
      @tasks = Task.all
      show_error("Some error occured unfortunately..try again!",'/tasks/todo')
    end

  end
end
