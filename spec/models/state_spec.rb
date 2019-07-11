require 'rails_helper'

RSpec.describe State, type: :model do

  # Name always in upper case
  it "A state name not have lowercase" do
    state_object = State.new(name: "california", country_id: 1)
    state_object.save
    expect(state_object.name).to eq("CALIFORNIA")
  end

   # Column name is required
   it "A state should not have blank data" do
    state = State.new()
    expect(state.save).to eq(false)
  end
end
