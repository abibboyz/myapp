Rails.application.routes.draw do
  
  #auto generated start
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'
  # end
  
  #new added start
  root 'demo#index'
  
  resources :subjects do
    member do
      get :delete
    end
  end

  #end
  
  #  #Simple Route
   get 'demo/index'
   get 'demo/hello'
   get 'demo/hello1'
   get 'demo/youtube'

 
 #Root route
 #root 'demo#index'  #controller#view
 
 
 #Default route
 #get ':controller(/:action(/:id))'
end
