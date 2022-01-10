# frozen_string_literal: true

Rails.application.routes.draw do
  resources :food_items

  root to: "food_items#index"
end
