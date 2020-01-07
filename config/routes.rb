Rails.application.routes.draw do
  devise_for :admins
  devise_for :guides
  devise_for :tourists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
