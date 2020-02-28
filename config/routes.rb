Rails.application.routes.draw do
  resources :members, :except => [:index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'members', to: 'members#new'
  get 'members/:id/edit', to: 'members#new'
  root :to => "members#new"
end
