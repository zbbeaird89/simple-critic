require "rails_helper"

feature "Sign Up" do
  scenario "user is redirected to '/home' after a valid sign up" do
    visit new_user_registration_path
    fill_in("user_username", :with => "zbbeaird")
    fill_in("user_email", :with => "zbbeaird1989@gmail.com")
    fill_in("user_password", :with => "password")
    fill_in("user_password_confirmation", :with => "password")
    click_button("Sign up")
    expect(page).to have_title "Home"
  end

  scenario "sign up page is rendered after invalid sign up" do
    visit new_user_registration_path
    fill_in("user_username", :with => "zbbeaird")
    fill_in("user_email", :with => "zbbeaird1989@gmail.com")
    fill_in("user_password", :with => "password")
    fill_in("user_password_confirmation", :with => "")
    click_button("Sign up")
    expect(page).to have_title "Sign Up"
  end
end
