require 'rails_helper'

RSpec.describe Genre, :type => :model do
  let(:genre) { build(:genre) }

  context "Associations"do
    it "has many movies" do
      association = described_class.reflect_on_association(:movies)
      expect(association.macro).to eq :has_many
    end
  end
end
