Rails.application.routes.draw do

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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
