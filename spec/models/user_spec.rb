require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  context "validations" do
    it "permits username" do
      expect(user).to be_valid
    end
  end

end
