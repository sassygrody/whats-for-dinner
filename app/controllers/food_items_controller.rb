# frozen_string_literal: true

class FoodItemsController < ApplicationController
  def index
    @pantry_items = FoodItem.where(refrigerated: false).order(:name)
    @fridge_items = FoodItem.where(refrigerated: true).order(:name)
  end
end
