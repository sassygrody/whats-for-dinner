# frozen_string_literal: true

FactoryBot.define do
  factory :food_item do
    name { FoodItem.item_types.keys.sample }
    item_type { name }
    refrigerated { false }
    in_kitchen { false }

    trait :veg do
      name { Faker::Food.vegetables }
      item_type { FoodItem.item_types[:vegetable] }
    end

    trait :protein do
      name { Faker::Food.sushi }
      item_type { FoodItem.item_types[:protein] }
    end

    trait :carb do
      item_type { FoodItem.item_types[:carb] }
    end

    trait :fat do
      item_type { FoodItem.item_types[:fat] }
    end

    trait :fridge do
      refrigerated { true }
    end
  end
end
