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

  def edit; end

  def create
    @food_item = FoodItem.new(food_item_params)
    respond_to do |format|
      if @food_item.save
        format.turbo_stream do
          section = @food_item.refrigerated? ? "fridge" : "pantry"
          render turbo_stream: turbo_stream.prepend(section, partial: "food_items/food_item",
                                                             locals: { food_item: @food_item, editable: true })
        end
        format.html { redirect_to food_item_url(@food_item), notice: "food item was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @food_item.update(food_item_params)
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace(@food_item, partial: "food_items/food_item",
                                                                locals: { food_item: @food_item, editable: true })
        end
        format.html { redirect_to food_item_url(@food_item), notice: "food_item was successfully updated." }
        format.json { render :show, status: :ok, location: @food_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
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
