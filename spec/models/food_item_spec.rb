# frozen_string_literal: true

require "rails_helper"

RSpec.describe FoodItem, type: :model do
  it "has a valid factory" do
    expect(build(:food_item).valid?).to be(true)
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:item_type) }
  end
end
