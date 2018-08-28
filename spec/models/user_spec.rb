require "rails_helper"

RSpec.describe "User", :type => :model do
  before(:all) do
    @user1 = build(:user)
  end

  it "is valid with valid attributes" do
    expect(@user1).to be_valid
  end

  it "username must be present" do
    @user1.username = "  "
    expect(@user1).to_not be_valid
  end

  it "email must be present" do
    @user1.email = ""
    expect(@user1).to_not be_valid
  end

  it "username should not be too long" do
    @user1.username = "a" * 51
    expect(@user1).to_not be_valid
  end

  it "email should not be too long" do
    @user1.email = "a" * 244 + "@example.com"
    expect(@user1).to_not be_valid
  end

  it "email addresses should be unique" do
    @user2 = build(:user)
    @user2.email = @user1.email
    @user1.save
    expect(@user2).to_not be_valid
  end

  it "password must be present" do
    @user1.password = ""
    expect(@user1).to_not be_valid
  end

  it "password must be at least 6 characters long" do
    @user1.password = "12345"
    expect(@user1).to_not be_valid
  end

  it "password must be confirmed" do
    @user1.password_confirmation = "pass"
    expect(@user1).to_not be_valid
  end
end
