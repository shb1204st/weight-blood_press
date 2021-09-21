Rails.application.routes.draw do
  devise_for :users
  root to: "weight_blood_presses#index"
end
