require "rails_helper"

RSpec.feature "User visits homepage", :type => :feature do
  scenario "successfully" do
    visit root_path

    expect(page).to have_text("Trade with confidence")
  end
end