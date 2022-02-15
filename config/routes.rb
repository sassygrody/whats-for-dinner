# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :meals
  resources :food_items
  resources :daily_plans

  root to: "food_items#index"
end
