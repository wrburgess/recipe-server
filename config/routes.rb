RecipeServer::Application.routes.draw do

  namespace :admin do

  end

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
