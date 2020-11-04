class PartsController < ApplicationController
  def index

  end

  def p1
    @task = Task.new
    @chapters1=["chapter1: Ruby literacy",
                "chapter2: Objects, methods, local variables",
                "chapter3: Organizing objects with classes",
                "chapter4: Module, program organization",
                "chapter5: Default object(self), scope, visibility",
                "chapter6: Control-flow techniques"]

  end
  def p2
    @task = Task.new
    @chapters2=["chapter7: Built-in essentials",
                "chapter8: String, symbol, scalar object",
                "chapter9: Collection, container object",
                "chapter10: Eumerable and Enumerator",
                "chapter11: Regular expression, regexp-based string",
                "chapter12: File, I/O operations"]
  end
  def p3
    @task = Task.new
    @chapters3=["chapter13: Object individuation",
                "chapter14: Callable, runnable object",
                "chapter15: Callback, hook, runtime introspection",
                "chapter16: Functional programming"]
  end
end
