Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about'
  resources :candidates do
    resources :job_board_metros
  end
  resources :job_postings do
    resources :job_board_metros
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
