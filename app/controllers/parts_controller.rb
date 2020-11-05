class PartsController < ApplicationController
  def index

  end

  def p1
    @task = Task.new
    #@chapters1= []
    @chapters1=Chapter.where(part_id: 1)

  end
  def p2
    @task = Task.new
    @chapters2=Chapter.where(part_id: 2)

  end
  def p3
    @task = Task.new
    @chapters3=Chapter.where(part_id: 3)

  end
end
