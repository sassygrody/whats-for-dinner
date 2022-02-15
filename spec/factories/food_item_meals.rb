# frozen_string_literal: true

FactoryBot.define do
  factory :food_item_meal do
    food_item
    meal
  end
end
