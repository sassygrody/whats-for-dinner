# frozen_string_literal: true

class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    respond_to do |format|
      if @meal.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.prepend("meals_list", partial: "meals/meals_list",
                                                                  locals: { meal: @meal })
        end
        format.html { redirect_to meal_url(@meal), notice: "Meal was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :notes, food_items: [])
  end
end
