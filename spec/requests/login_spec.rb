require "rails_helper"

RSpec.describe "login process", :type => :request do
  before(:each) do
    @user = FactoryBot.create(:user)
  end

  it "gets login page" do
    get new_user_session_path
    expect(response.status).to eq 200
  end

  context "successful login" do
    it "redirects to index" do
      post user_session_path, params: { user: { email: @user.email,
                                                password: @user.password } }
      expect(response).to redirect_to movies_url
    end
  end
end
