Rails.application.routes.draw do
  devise_for :users
  root 'questions#index'

  #Questions
  #Create
  get '/questions/new' => 'questions#new'
  post '/questions/create' => 'questions#create'
  
  #Read
  
  get '/questions/show/:question_id' => 'questions#show'

  #Update
  get '/questions/edit/:question_id' => 'questions#edit'
  post 'questions/update/:question_id' => 'questions#update'

  #Delete
  post '/questions/delete/:question_id' => 'questions#delete'
  
  #Comments
  #Create
  post '/questions/show/:question_id/comments/create' => 'comments#create'
  
  #Delete
  post '/questions/show/:question_id/comments/delete/:comment_id' => 'comments#delete'
end
