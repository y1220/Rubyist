class PagesController < ApplicationController

  def index
    @task= Task.new
  end

  def show
    @str= "------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

    render "/pages/#{params[:first]}/#{params[:second]}"
  end

end
