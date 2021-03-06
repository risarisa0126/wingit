Rails.application.routes.draw do

  root 'home#top'
  get 'about' => 'home#about'
  resources :rooms, :only => [:index, :show, :create] do
    resources :messages, :only => [:create]
  end

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  }


  namespace :admins do
    get 'reviews/index'
    get 'users/index'
  end

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
    resources :guides, :only => [:index, :show, :update, :destroy] do
      member do
        get 'mypage'
      end
    end
  end

  scope module: :tourists do
    resources :tourists, :only => [:index, :show, :update, :destroy] do
      member do
        get 'mypage'
      end
    end
  end

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  # scope '(:locale)', locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
  #   resources :posts, param: :slug
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
