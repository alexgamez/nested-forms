require 'rails_helper'

RSpec.describe City, type: :model do
  # Column name is required
  it "A City should not have blank data" do
    city = City.new()
    expect(city.save).to eq(false)
  end

  # Name always in upper case
  it "A City name not have lowercase" do
    city = City.new(name:"city")
    city.save
    expect(city.name).to eq("CITY")
  end
end
