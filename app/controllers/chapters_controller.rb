class ChaptersController < ApplicationController
  def index
  end



  def show
    @box= Box.new
    @pages= Page.all.where(chapter_id: params[:second].delete("c"))
    #byebug
    #@pages= Page.all
    render "/chapters/#{params[:first]}/#{params[:second]}"
  end
end
