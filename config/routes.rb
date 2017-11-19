Rails.application.routes.draw do

  get 'book/main_page'

  #ERB
  #Embedded Ruby
  #<% code %> processes and execute sentence
  #<%= code %> processes and execute sentence and has a output

  #get 'example/show'

  #get 'example/new'

  #get 'example/edit'

  #get 'example/delete'

  #controller#action
  root 'demo#index'

  #match route 'controller/action'
  get 'demo/index'
  
  #default route
  #may go away in future versions of Rails 
  get ':controller(/:action(/:id))'

  match 'exampleshow', :to => 'example#show', :via => :get

  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
