require 'rails_helper'

RSpec.describe Movie, :type => :model do
  let(:movie) { build(:movie) }

  context "Associations" do
    it "belongs to a user" do
      association = described_class.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end

    it "belongs to a genre" do
      association = described_class.reflect_on_association(:genre)
      expect(association.macro).to eq :belongs_to
    end

    it "has many reviews" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.macro).to eq :has_many
    end

    it "has dependent: :destroy option for reviews association" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.options[:dependent]).to eq :destroy
    end
  end
end
