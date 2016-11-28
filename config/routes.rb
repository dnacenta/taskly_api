Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:new, :edit] do
        resources :orders, except: [:new, :edit]
          put 'orders/:id/complete', to: 'orders#complete'
          patch 'orders/:id/complete', to: 'orders#complete'
        resources :tasks, except: [:new, :edit]
          put 'tasks/:id/complete', to: 'tasks#complete'
          patch 'tasks/:id/complete', to: 'tasks#complete'
      end
    end
  end
end
