require 'rails_helper'

RSpec.describe Tenancy::Person, type: :model do
  context "validations" do
    it "name" do
      should validate_presence_of(:first_name)
    end
  end

  context "persisted data" do
    it "name" do
      person = FactoryGirl.create(:tenancy_person)
      persisted = Tenancy::Person.find(person.id)
      
      expect(persisted.first_name).to eq("test 1")
    end
  end
end
