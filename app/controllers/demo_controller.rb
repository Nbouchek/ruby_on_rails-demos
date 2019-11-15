class DemoController < ApplicationController

  layout false

  def index
    # render default template /demo/index 
  end

  def hello
    # chaning the default value: /demo/hello to  /demo/hello
    render('index')
  end
end
