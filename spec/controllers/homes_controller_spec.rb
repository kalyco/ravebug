require "rails_helper"

RSpec.describe HomesController, type: :controller do
  describe "#index" do
	  it "when signed in as user, redirects to user's home feed" do
	    user = FactoryGirl.create(:user)
	    sign_in user
	    get :index
	    expect(response.status).to eq 200
	  end
	end
end