require 'rails_helper'

RSpec.describe Country, type: :model do

  # Column name is required 
  it "A Country should not have blank data" do
    country = Country.new()
    expect(country.save).to eq(false)
  end

  # Name always in upper case
  it "A Country name not have lowercase" do
    country = Country.new(name:"mexico")
    country.save
    expect(country.name).to eq("MEXICO")
  end


end

