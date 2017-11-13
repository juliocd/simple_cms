class DemoController < ApplicationController
  
  layout false

  def index
    render('index')
  end

  def hello
    #instance variable
    @array = [1,2,3,4,5]

    #from parameters
    @id = params['id']
    @page = params[:page]

    #variables
    myArray = [2,2,4,4]

    render('hello')
  end

  def other_hello
    #specified controller
    #redirect_to(:controller => 'demo', :action => 'index')

    #take current controller
    redirect_to(:action => 'hello')
  end

  def lynda
    redirect_to('http://linda.com')
  end

end
