require "rails_helper"

RSpec.describe "user signup process", :type => :request do
  let(:user) { build(:user) }

  context "successful signup" do
    it "gets signup page" do
      get new_user_registration_path
      expect(response.status).to eq 200
    end

    it "redirects to movies_url" do
      post user_registration_path, params: { user: FactoryBot.attributes_for(:user) }
      expect(response).to redirect_to movies_url
    end
  end
end
