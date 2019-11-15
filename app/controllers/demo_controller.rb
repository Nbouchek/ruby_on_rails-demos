class DemoController < ApplicationController

  layout false

  def index
    # render default template /demo/index
    render('index') 
  end

  def hello
    # render default template
  end

  def other_hello
    # chaning the default value: /demo/hello to  /demo/hello
    redirect_to('hello')
  end

  def nacerbits
    # chaning the default value: /demo/hello to  /demo/hello
    redirect_to('http://www.nacerbits.com')
  end
end
