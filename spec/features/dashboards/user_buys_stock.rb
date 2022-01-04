require "rails_helper"

RSpec.describe "As a User, I want to create a task for a specific category so that I can organize tasks quicker", type: :feature do
    before do
        sign_in create(:user)
    end

    it "successfully goes to buy page " do
        visit authenticated_path

        click_on "Buy"

        expect(page).to have_text("Buy Stock")
    end

end