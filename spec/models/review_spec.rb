require 'rails_helper'

RSpec.describe Review, :type => :model do
  let(:review) { build(:review) }

  context "Validations" do
    it "is a valid review" do
      expect(review).to be_valid
    end
  end

  context "Associations" do
    it "belongs to a user" do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end

    it "belongs to a movie" do
      association = described_class.reflect_on_association(:movie)
      expect(association.macro).to eq :belongs_to
    end
  end
end
