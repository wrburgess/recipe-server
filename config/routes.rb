RecipeServer::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api do
    namespace :v1 do
      resources :recipes
    end
  end

  scope :module => "browser", defaults: { format: "html" } do
    root :to => "static#index"
    get "mock" => "static#mock"
  end

end
