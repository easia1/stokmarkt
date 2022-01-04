require 'rails_helper'

RSpec.describe "Dashboards", type: :request do
  describe "GET dashboards#index" do
    before do
      sign_in create(:user)
    end

    it "returns the homepage of user" do
      get authenticated_path
      expect(response).to have_http_status(:success)
    end
  end
end
