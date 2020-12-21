require "rails_helper"

RSpec.describe "login process", :type => :request do
  let(:user) { create(:user) }

  it "gets login page" do
    get new_user_session_path
    expect(response.status).to eq 200
  end

  context "successful login" do
    it "redirects to index" do
      post user_session_path, params: { user: { email: user.email,
                                                password: user.password } }
      expect(response).to redirect_to movies_url
    end
  end

  context "unsuccessful login" do
    it "renders login page when password is incorrect" do
      post user_session_path, params: { user: { email: user.email,
                                                password: "wrong password" } }
      expect(response.body).to include("Log in")
    end

    it "renders login page when email is incorrect" do
      post user_session_path, params: { user: { email: "stlprincess@gmail.com",
                                                password: user.password } }
      expect(response.body).to include("Log in")
    end
  end
end
