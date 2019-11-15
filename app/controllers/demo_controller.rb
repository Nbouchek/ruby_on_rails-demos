class DemoController < ApplicationController

  layout false

  def index
    # render default template /demo/index
    render('hello') 
  end

  def hello
    # chaning the default value: /demo/hello to  /demo/hello
    render('index')
  end

  def other_hello
    # chaning the default value: /demo/hello to  /demo/hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def nacerbits
    # chaning the default value: /demo/hello to  /demo/hello
    redirect_to('http://www.nacerbits.com')
  end
end
