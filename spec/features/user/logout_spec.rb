require "rails_helper"

RSpec.feature "Logout", :type => :feature do
  let(:user) { create(:user) }

  scenario "user logs in and successfully logs out" do
    sign_in user
    visit root_path
    find("#navbarDropdown", text: "Account").click
    find(".dropdown-item", text: "Log Out").click
    expect(page).to have_selector("a", text: "Log In")
  end
end
