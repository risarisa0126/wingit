Rails.application.routes.draw do

  root 'home#top'
  get 'about' => 'home#about'

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }

  devise_for :guides, controllers: {
  confirmations: 'guides/confirmations',
  sessions:      'guides/sessions',
  passwords:     'guides/passwords',
  registrations: 'guides/registrations'
  }

  devise_for :tourists, controllers: {
  confirmations: 'tourists/confirmations',
  sessions:      'tourists/sessions',
  passwords:     'tourists/passwords',
  registrations: 'tourists/registrations'
  }

  scope module: :guides do
    resources :guides, :only => [:index, :show, :update, :destroy]
    get 'guides/mypage' => 'guides#mypage'
  end

  scope module: :tourists do
    resources :tourists, :only => [:index, :show, :update, :destroy]
    get 'tourists/mypage' => 'tourits#mypage'
  end

  namespace :admins do
    get 'reviews/index'
    get 'users/index'
  end

  namespace :guides do
    get 'rooms/show'
  end
  namespace :tourists do
    get 'rooms/show'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
