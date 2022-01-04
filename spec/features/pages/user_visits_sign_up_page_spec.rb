require "rails_helper"

RSpec.feature "User visits Sign Up page", :type => :feature do
  scenario "successfully" do
    visit new_user_registration_path

    expect(page).to have_text("Sign Up")
    expect(page).to have_text("Name")
    expect(page).to have_text("Email")
    expect(page).to have_text("Password")

  end
end