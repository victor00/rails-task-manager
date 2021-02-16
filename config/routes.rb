Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # list all tasks
  get 'tasks', to: 'tasks#index'

  # form to create a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # show one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # create a task in our DB
  post 'tasks', to: 'tasks#create'
end
