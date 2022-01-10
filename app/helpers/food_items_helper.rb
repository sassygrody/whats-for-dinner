# frozen_string_literal: true

module FoodItemsHelper
  def icon(item)
    case item.item_type_before_type_cast
    when FoodItem.item_types[:vegetable] then "carrot"
    when FoodItem.item_types[:fat] then "cheese"
    when FoodItem.item_types[:protein] then "fish"
    when FoodItem.item_types[:carb] then "bread-slice"
    else
      "utensils"
    end
  end
end
