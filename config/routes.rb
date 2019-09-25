Rails.application.routes.draw do

  namespace :admin do
    resources :employees
    resources :questions
    resources :choices
    resources :materials

    root to: "employees#index"
  end

  resources :choice, :except => [:new, :create,:destroy]
  get '/choice/new/:id', to: 'choice#new', as: :new_choice
  post '/choice/create', to: 'choice#create', as: :create_choice
  patch '/choice/:id', to: 'choice#update', as: :update_choice
  delete '/choice/:id/delete', to: 'choice#destroy', as: :delete_choice


  resources :assign, :except => [:new, :create,:destroy]
  get '/assign/new/:id', to: 'assign#new', as: :new_assign
  post '/assign/create', to: 'assign#create', as: :create_assign
  patch '/assign/:id', to: 'assign#update', as: :update_assign
  delete '/assign/:id/delete', to: 'assign#destroy', as: :delete_assign
  

  devise_for :employees

  scope '(:locale)' do
    resources :homepage, :except => [:new, :create,:destroy]
    get 'homepage/new/:id', to: 'homepage#new', as: :answer_new
    post '/homepage/create', to: 'homepage#create', as: :answer_create
    patch '/homepage/:id', to: 'homepage#update', as: :answer_update
    delete 'homepage/:id/delete', to: 'homepage#destroy', as: :answer_delete


    get 'profile/edit/:id' => 'profile#edit', as: :edit_password
    patch 'profile/:id' => 'profile#update', as: :update_password

    get 'material/charts' => 'chart#index', as: :chart_show

    root 'homepage#index'

  end


end
