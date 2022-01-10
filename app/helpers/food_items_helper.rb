# frozen_string_literal: true

module FoodItemsHelper
  def icon(item)
    case item.item_type_before_type_cast
    when FoodItem.item_types[:vegetable]
      "carrot"
    when FoodItem.item_types[:fat]
      "cheese"
    when FoodItem.item_types[:protein]
      "fish"
    when FoodItem.item_types[:carb]
      "bread-slice"
    else
      "utensils"
    end
  end
end
