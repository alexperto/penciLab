PenciLab::Application.routes.draw do
  devise_for :users
  root to: "dashboard#index"
  match 'pull_request' => 'github#webhook', :via => :post
end
