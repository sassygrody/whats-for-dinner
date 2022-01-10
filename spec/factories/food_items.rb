# frozen_string_literal: true

FactoryBot.define do
  factory :food_item do
    name { Faker::Food.vegetables }
    refrigerated { false }
    in_kitchen { false }
    item_type { FoodItem.item_types[:vegetable] }

    trait :veg do
      name { Faker::Food.vegetables }
      item_type { FoodItem.item_types[:vegetable] }
    end

    trait :protein do
      name { Faker::Food.sushi }
      item_type { FoodItem.item_types[:protein] }
    end

    trait :carb do
      item_type { FoodItem.item_types[:ingredient] }
    end

    trait :fat do
      item_type { FoodItem.item_types[:ingredient] }
    end
  end
end