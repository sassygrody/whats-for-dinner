# frozen_string_literal: true

module FoodItemsHelper
  def icon(food_item)
    case food_item.item_type_before_type_cast
    when FoodItem.item_types[:vegetable] then "carrot"
    when FoodItem.item_types[:fat] then "cheese"
    when FoodItem.item_types[:protein] then "fish"
    when FoodItem.item_types[:carb] then "bread-slice"
    else
      "utensils"
    end
  end

  def food_item_class_name(food_item)
    "food-item #{food_item.item_type}"
  end
end
