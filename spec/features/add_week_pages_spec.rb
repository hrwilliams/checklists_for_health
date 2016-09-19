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
# spec above is failing. capybara is going to erros page. online documentation says fill_in is correct method to use for the date field

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit new_week_path
    click_on 'Create Week'
    expect(page).to have_content 'errors'
  end
end
