Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :events, skip: [:edit, :update, :new, :create, :destroy] do
        member do
          post 'tell_i_am_going'
          post 'join'
          post 'rate'
        end
      end
    end
  end

  namespace :admin do 
    resources :events do
      get 'craw', on: :collection
      get 'destroy_all', on: :collection
      get 'accept', on: :member
    end
  end
end
