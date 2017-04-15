Rails.application.routes.draw do
  devise_for :users
  resources :jobs


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
      resources :resumes
      collection do
        get :search
      end
    end

  namespace :account do
   resources :jobs
  end


  root 'jobs#index'
end
