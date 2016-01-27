require "rails_helper"

RSpec.describe HomeController, type: :controller do
  describe "GET #home" do
  it "when signed in as user, redirects to user's home feed" do
    user = FactoryGirl.create(:user)
    sign_in user
    get :home, {}, valid_session
    expect(response).to redirect_to(user_home_path(user))
  end
	
end