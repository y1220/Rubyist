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
  def p4
    @task = Task.new
    @chapters4=Chapter.where(part_id: 4)

  end
  def p5
    @task = Task.new
    @chapters5=Chapter.where(part_id: 5)

  end
  def p6
    @task = Task.new
    @chapters6=Chapter.where(part_id: 6)

  end
  def p7
    @task = Task.new
    @chapters7=Chapter.where(part_id: 7)

  end
  def p8
    @task = Task.new
    @chapters8=Chapter.where(part_id: 8)

  end
  def p9
    @task = Task.new
    @chapters9=Chapter.where(part_id: 9)

  end
end
