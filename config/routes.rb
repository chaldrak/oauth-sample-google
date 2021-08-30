Rails.application.routes.draw do
  get 'oauth_test/index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root 'blogs#index'
  resources :blogs
  mount LetterOpenerWeb::Engine, at: "/inbox" if Rails.env.development?
end
