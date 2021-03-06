Rails.application.routes.draw do
  get 'words/index'

  get 'words/search'
  post 'words/search'

  get 'words/new'
  post 'words' => 'words#create'

  get 'words/show/:alphabet' => 'words#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
