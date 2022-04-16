Rails.application.routes.draw do
  get 'user/create'
  post 'user/create'
  get 'user/view/:id', to: 'user#view'
  get 'user/show'
  get 'user/update/:id', to: 'user#update'
  post 'user/update/:id', to: 'user#update'
  get 'user/delete', to: 'user#update'

  get 'article/create'
  post 'article/create'
  get 'article/view/:id', to: 'article#view'
  get 'article/show'
  get 'article/update/:id', to: 'article#update'
  post 'article/update/:id', to: 'article#update'
  get 'article/delete', to: 'article#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
