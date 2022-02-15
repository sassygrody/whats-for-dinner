# frozen_string_literal: true

class FoodItemsController < ApplicationController
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
        format.html { redirect_to root_url, notice: "food_item was successfully created." }
        format.json { render :index, status: :created, location: @food_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def food_item_params
    params.require(:food_item).permit(:name, :item_type, :refrigerated, :in_kitchen)
  end
end
