# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :meals do
    resources :food_item_meals
  end

  resources :food_items
  # resources :food_item_meals
  # get "new_food_item_meals", to: "meals#new_food_item_meals"
  resources :daily_plans

  root to: "food_items#index"
end
