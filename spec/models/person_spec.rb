require 'rails_helper'

RSpec.describe Person, type: :model do

  it "has a valid factory" do
  	#person = FactoryGirl.build(:person) it is also valid
    expect(FactoryGirl.build(:person)).to be_valid
  end

  it "is invalid without a name" do
  	person = FactoryGirl.build(:person, name: nil)
    expect(person).not_to be_valid
  end

  it "is invalid without an age" do
  	person = FactoryGirl.build(:person, age: nil)
    expect(person).not_to be_valid
  end

  it "returns a person's identifier as a string" do
    person = FactoryGirl.build(:person, name: "Johnny", age: 12)
    expect(person.identifier).to eq("Johnny 12")
  end

end
