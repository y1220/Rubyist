class PagesController < ApplicationController

  def index
  end

  def show
    @str= "------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

    render "/pages/#{params[:first]}/#{params[:second]}"
  end

end
