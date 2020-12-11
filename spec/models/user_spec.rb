require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  context "validations" do
    it "permits username" do
      expect(user).to be_valid
    end
  end

  context "Associations" do
    it "has many movies" do
      association = described_class.reflect_on_association(:movies)
      expect(association.macro).to eq :has_many
    end

    it "has many reviews" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.macro).to eq :has_many
    end

    it "has dependent: :destroy option" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.options[:dependent]).to eq :destroy
    end
  end

end
