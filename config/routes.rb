Rails.application.routes.draw do
  get '/comic/:id' => 'application#comic'
  get '/add' => 'application#add'
  get '/create' => 'application#create'
  get 'comic/:id/edit' => 'application#edit'
  get 'update/:id' => 'application#update'
end
