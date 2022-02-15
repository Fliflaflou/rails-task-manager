Rails.application.routes.draw do
  get 'tasks', to: 'tasks#list'

  get 'new', to: 'tasks#new', as: :new_tasks
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task

  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'

 # resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
