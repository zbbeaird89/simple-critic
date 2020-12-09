require "rails_helper"
#TODO test a successful login
feature "Log In" do
  let(:user) { create(:user) }

  scenario "Successful login" do
    user
    visit root_path
    find(".dropdown-item", text: "Log In").click
    fill_in "user[email]", :with => user.email
    fill_in "user[password]", :with => user.password
    click_button "Log in"
    expect(page).to have_selector('.review-btn', text: 'Add Movie')
  end
end
