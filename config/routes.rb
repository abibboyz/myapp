Rails.application.routes.draw do
   #Simple Route
   get 'demo/index'
   get 'demo/hello'
   get 'demo/hello1'
   get 'demo/youtube'

 
 #Root route
 #root 'demo#index'  #controller#view
 
 
 #Default route
 #get ':controller(/:action(/:id))'
end
