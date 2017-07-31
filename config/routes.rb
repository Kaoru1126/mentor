Rails.application.routes.draw do
  devise_for :users

  get 'reviews' => 'reviews#top'
  root 'reviews#top'

  resources :reviews do
    collection do
      get 'search'
    end
  end

end
