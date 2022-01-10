# frozen_string_literal: true

FactoryBot.define do
  factory :meal do
    name { Meal.names[:breakfast] }
    notes { nil }
    food_items { create_list(:food_item, 3) }
  end
end
