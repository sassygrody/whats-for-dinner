# frozen_string_literal: true

class FoodItemsController < ApplicationController
  before_action :set_food_item, only: %i[show edit update destroy]

  def index
    @pantry_items = FoodItem.where(refrigerated: false).order(:name)
    @fridge_items = FoodItem.where(refrigerated: true).order(:name)
    @meals = Meal.all
  end

  # GET /food_items/new
  def new
    @food_item = FoodItem.new
  end

  # POST /food_items or /food_items.json
  def create
    @food_item = FoodItem.new(food_item_params)
    respond_to do |format|
      if @food_item.save
        format.turbo_stream do
          section = @food_item.refrigerated? ? "fridge" : "pantry"
          render turbo_stream: turbo_stream.prepend(section, partial: "food_items/food_item",
                                                             locals: { food_item: @food_item })
        end
        format.html { redirect_to food_item_url(@food_item), notice: "food item was successfully created." }
      end
    end
  end

  private

  def set_food_item
    @food_item = FoodItem.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def food_item_params
    params.require(:food_item).permit(:name, :item_type, :refrigerated, :in_kitchen)
  end
end
