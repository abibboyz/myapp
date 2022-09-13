Rails.application.routes.draw do
  # get 'sections/index'
  # get 'sections/show'
  # get 'sections/new'
  # get 'sections/edit'
  # get 'sections/delete'
  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/edit'
  # get 'pages/delete'
  
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
  resources :pages do
    member do
      get :delete
    end
  end
  resources :sections do
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
