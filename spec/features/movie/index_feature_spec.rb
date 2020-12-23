require "rails_helper"

RSpec.feature "Movies Index", :type => :feature do
  let(:user) { create(:user) }

  context "when a user is not logged in" do
    scenario "the create account section should be visible" do
      visit movies_path
      expect(page).to have_selector("h3", text: "Create an account")
    end
  end

  context "when a user is logged in" do
    scenario "the create account section should be ommitted" do
      sign_in user
      visit movies_path
      expect(page).to have_selector("h3", text: "Create an account", visible: false)
    end
  end
end
