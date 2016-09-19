require 'rails_helper'

describe "user log in" do
  it "allows an existing user to sign in" do
    User.create!(email: "user1@user.com", password: "password")
    visit "/users/sign_in"
    fill_in "Email", with: "user1@user.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    expect(page).to have_content("Signed in successfully.")
  end
end
