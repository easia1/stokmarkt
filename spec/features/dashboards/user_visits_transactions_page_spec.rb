require "rails_helper"

RSpec.feature "User visits transactions page", :type => :feature do
	before do
		sign_in create(:user)
	end

  scenario "successfully" do
    visit stocks_path

    expect(page).to have_text("Search Stocks")
    expect(page).to have_text("Trending Stocks")

  end
end

