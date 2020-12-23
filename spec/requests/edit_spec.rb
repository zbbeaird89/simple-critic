require "rails_helper"

RSpec.describe "Edit Account", :type => :request do
  let(:user) { create(:user) }

  context "not signed in user" do
    it "cannot access edit page" do
      get edit_user_registration_path(user)
      expect(response.body).to include("You need to sign in or sign up before continuing.") 
    end
  end

  context "signed in user" do
    it "displays edit page" do
      sign_in user
      get edit_user_registration_path(user)
      expect(response.body).to include("Edit")
    end
  end
end
