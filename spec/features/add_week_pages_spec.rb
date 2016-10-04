require 'rails_helper'

describe "the add a week process" do
  it "adds a new week" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit weeks_path

    click_link 'Start a New Week'

    fill_in 'Date', :with => '2016/09/18'
    click_on 'Create Week'
    expect(page).to have_content 'Weeks'
  end

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit new_week_path
    click_on 'Create Week'
    expect(page).to have_content 'errors'
  end

  it "loads displays new Weeks without reloading page", js: true do
    user = FactoryGirl.create(:user)
    visit '/'
    fill_in "Email", with: "user1@user.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    click_link 'Start a New Week'
    fill_in 'Date', :with => '2016/09/18'
    click_on 'Create Week'
    expect(page).to have_content '2016-09-18'
  end
end
