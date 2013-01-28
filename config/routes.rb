Recipe::Application.routes.draw do

  namespace :admin do

  end

  scope :module => "browser", defaults: { format: "html" } do
    root :to => "static#index"
    get "mock" => "static#mock"
  end

end
