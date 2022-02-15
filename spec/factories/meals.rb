# frozen_string_literal: true

FactoryBot.define do
  factory :meal do
    name { Meal.names[:breakfast] }
    notes { nil }
    food_items { create_list(:food_item, 3) }

    trait :breakfast do
      name { Meal.names[:breakfast] }
      food_items do
        [
          create(:food_item, :carb),
          create(:food_item, :protein),
          create(:food_item, :veg)
        ]
      end
    end

    trait :lunch do
      name { Meal.names[:lunch] }
      food_items do
        [
          create(:food_item, :carb),
          create(:food_item, :protein),
          create(:food_item, :veg)
        ]
      end
    end

    trait :dinner do
      name { Meal.names[:dinner] }
      food_items do
        [
          create(:food_item, :fat),
          create(:food_item, :protein),
          create(:food_item, :veg)
        ]
      end
    end
  end
end
