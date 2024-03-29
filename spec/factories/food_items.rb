# frozen_string_literal: true

FactoryBot.define do
  factory :food_item do
    name { FoodItem.item_types.keys.sample }
    item_type { name }
    refrigerated { [true, false].sample }
    in_kitchen { [true, false].sample }

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
      name { "carb" }
    end

    trait :fat do
      item_type { FoodItem.item_types[:fat] }
      name { "fat" }
    end

    trait :fridge do
      refrigerated { true }
    end

    trait :in_kitchen do
      in_kitchen { true }
    end
  end
end
