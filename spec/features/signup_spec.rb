require "rails_helper"

#TODO test all validations and their outcomes
RSpec.feature "Sign Up", :type => :feature do
  let(:user) { build(:user) }

  scenario "user should redirect to '/movies' page after a valid sign up" do
    visit root_path
    find(".dropdown-item", text: "Sign Up").click
    fill_in("user[username]", :with => "foobar")
    fill_in("user[email]", :with => "foo@bar.com")
    fill_in("user[password]", :with => "password")
    fill_in("user[password_confirmation]", :with => "password")
    click_button("Sign up")
    expect(page).to have_title("Movies")
  end

  scenario "sign up page is rendered after invalid sign up" do
    visit new_user_registration_path
    fill_in("user[username]", :with => "zbbeaird")
    fill_in("user[email]", :with => "zbbeaird1989@gmail.com")
    fill_in("user[password]", :with => "password")
    fill_in("user[password_confirmation]", :with => "")
    click_button("Sign up")
    expect(page).to have_title "Sign Up"
  end
end
