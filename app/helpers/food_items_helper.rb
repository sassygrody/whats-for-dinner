# frozen_string_literal: true

module FoodItemsHelper
  def icon(item)
    case item.item_type
    when "vegetable"
      "carrot"
    when "fat"
      "cheese"
    when "protein"
      "fish"
    else
      "camera-retro"
    end
  end
end
