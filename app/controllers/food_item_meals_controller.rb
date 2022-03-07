# frozen_string_literal: true

class FoodItemMealsController < ApplicationController
  def new
    @food_item_meal = FoodItemMeal.new
  end

  def create
    @food_item_meal = FoodItemMeal.new(food_item_meal_params)
    respond_to do |format|
      if @food_item_meal.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.prepend("meals_list", partial: "food_item_meals/meals_list",
                                                                  locals: { food_item_meal: @food_item_meal })
        end
        # format.html { redirect_to food_item_meal_url(@food_item_meal), notice: "Meal was successfully created." }
        # else
        # format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @food_item_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def food_item_meal_params
    params.require(:food_item_meal).permit(:food_item_id, :meal_id)
  end
end
