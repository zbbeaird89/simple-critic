require "rails_helper"

feature "Log In" do
  before(:each) do
    @user = create(:user)
  end

  scenario "Successful login" do
    visit new_user_session_path
    fill_in "user_username", :with => @user.username
    fill_in "user_password", :with => @user.password
    click_button "Log in"
    expect(page).to have_content @user.username
  end
end
