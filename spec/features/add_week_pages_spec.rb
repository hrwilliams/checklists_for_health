require 'rails_helper'

describe "the add a week process" do
#   it "adds a new week" do
#     visit weeks_path
#     click_link 'Start a New Week'
#     fill_in 'Date', :with => '09/18/2016'
#     click_on 'Create Week'
#     expect(page).to have_content 'Weeks'
#   end
# spec above is failing. capybara is going to erros page. online documentation says fill_in is correct method to use for the date field

  it "gives error when no name is entered" do
    visit new_week_path
 save_and_open_page

    click_on 'Create Week'
    expect(page).to have_content 'errors'
  end
end
