Rails.application.routes.draw do
  # Root
  root "application#index"

  resources :projects, only: [:index] do
    resources :ticket_groups, only: [:index]
    resources :tickets, only: [:index, :show]
    resources :labels, only: [:index]
  end

  # No Handler Path
  get "*path", controller: "application", action: "no_handler_found"
  post "*path", controller: "application", action: "no_handler_found"
  put "*path", controller: "application", action: "no_handler_found"
  delete "*path", controller: "application", action: "no_handler_found"
end
