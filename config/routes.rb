Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'auth/login'
      get 'auth/logout'
      resources :events, only: [:index] do
        member do
          get 'going'
          get 'arrive'
          get 'rate'
          get 'like'
          get 'dislike'
        end
        collection do
          get 'event_users'
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
