Rails.application.routes.draw do

  resources :advertisements

  resources :posts

  get 'about' => 'welcome#about'

  get 'advertisements' => 'advertisements#index'

  get 'posts' => 'posts#index'

  root 'welcome#index'

end
