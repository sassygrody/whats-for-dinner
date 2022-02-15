# frozen_string_literal: true

require "rails_helper"

RSpec.describe DailyPlanMeal, type: :model do
  describe "associations" do
    it { should belong_to(:daily_plan) }
    it { should belong_to(:meal) }
  end
end
