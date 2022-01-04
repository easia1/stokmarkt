require "rails_helper"

RSpec.feature "User visits login page", :type => :feature do
  scenario "successfully" do
    visit new_user_session_path

    expect(page).to have_text("Log in")
    expect(page).to have_text("Email")
    expect(page).to have_text("Password")
  end
end