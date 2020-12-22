require "rails_helper"

RSpec.describe "user signup process", :type => :request do
  let(:user) { build(:user) }
  let(:attributes) { FactoryBot.attributes_for(:user) }

  context "successful signup" do
    it "gets signup page" do
      get new_user_registration_path
      expect(response.status).to eq 200
    end

    it "redirects to movies_url" do
      post user_registration_path, params: { user: FactoryBot.attributes_for(:user) }
      expect(response).to redirect_to movies_url
    end

    it "handles unsuccessful signup and then handles successful signup" do
      get new_user_registration_path
      expect(response).to be_successful

      attributes = FactoryBot.attributes_for(:user)
      post user_registration_path, params: { user: attributes.merge(password_confirmation: "") }
      expect(response.body).to include("Sign up")

      post user_registration_path, params: { user: attributes.merge(password_confirmation: "password") }
      expect(response).to redirect_to movies_url
    end
  end

  context "Unsuccessful signup" do
    it "renders signup page when password confirmation is blank" do
      post user_registration_path, params: { user: attributes.merge(password_confirmation: "") }
      expect(response.body).to include("Sign up")
    end

    it "renders signup page when password is blank" do
      post user_registration_path, params: { user: attributes.merge(password: "") }
      expect(response.body).to include("Sign up")
    end

    it "renders signup page when username is blank" do
      post user_registration_path, params: { user: attributes.merge(username: "") }
      expect(response.body).to include("Sign up")
    end

    it "renders signup page when email is blank" do
      post user_registration_path, params: { user: attributes.merge(email: "") }
      expect(response.body).to include("Sign up")
    end
  end
end
