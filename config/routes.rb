Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
      registrations: 'user/registrations', sessions: 'user/sessions'
    }

  resources :customers, :shopkeepers, :products
end
