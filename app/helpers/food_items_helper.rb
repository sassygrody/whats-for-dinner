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

  def food_item_classes(food_item)
    spacing = " py-1 mb-3 mr-2 flex items-center"
    case food_item.item_type
    when "vegetable" then "bg-lime-500 #{spacing}"
    when "carb" then "bg-yellow-400 #{spacing}"
    when "protein" then "bg-sky-300 #{spacing}"
    when "fat" then "bg-fuchsia-300 #{spacing}"
    else
      "bg-zinc-300 #{spacing}"
    end
  end
end
