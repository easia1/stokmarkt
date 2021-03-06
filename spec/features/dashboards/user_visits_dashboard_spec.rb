require "rails_helper"

RSpec.feature "User visits dashboard page", :type => :feature do
	before do
		sign_in create(:user)
	end

  scenario "successfully" do
    visit authenticated_path

    expect(page).to have_text("Your Portfolio")
    expect(page).to have_text("Current Balance")

  end
end

