Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/eaters" => "eaters#index"
    post "/eaters" => "eaters#create"
    get "/eaters/:id" => "eaters#show"
    patch "/eaters/:id" => "eaters#update"
    delete "/eaters/:id" => "eaters#destroy"
  end
end
