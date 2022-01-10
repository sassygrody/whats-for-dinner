# frozen_string_literal: true

FactoryBot.define do
  factory :meal do
    name { Meal.names[:breakfast] }
    notes { nil }
    food_items { create_list(:food_item, 3) }

    trait :breakfast do
      name { Meal.names[:breakfast] }
    end

    trait :lunch do
      name { Meal.names[:lunch] }
    end

    trait :dinner do
      name { Meal.names[:dinner] }
    end
  end
end
