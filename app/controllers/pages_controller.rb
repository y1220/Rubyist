class PagesController < ApplicationController

  def index
    @task= Task.new
  end

  def show
    @box= Box.new
    @boxes= Box.where(page_id: params[:second].delete("p"))
    #byebug
    @str= "------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

    render "/pages/#{params[:first]}/#{params[:second]}"
  end

end
