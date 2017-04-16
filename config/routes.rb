Rails.application.routes.draw do
  devise_for :users




  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
  end
end

    resources :jobs do
      collection do
        get :search
      end
      resources :resumes
    end

  namespace :account do
   resources :jobs
  end

  resources :pages do
    collection do
      get :help
    end
  end

  root 'welcome#index'
end
