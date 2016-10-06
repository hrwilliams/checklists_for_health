require 'spec_helper'
require 'rails_helper'

describe 'PhysicalTasks' do
  it 'validates description', js: true do
    user = FactoryGirl.create(:user)
    week = FactoryGirl.create(:week)
    visit '/'
    fill_in "Email", with: "user1@user.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    visit 'weeks/1'
    click_on 'Add a daily physical task/goal'
    fill_in "Description", with: ""
    click_button "Create Physical task"
    page.should have_content("Description can't be blank")

end

# it "loads displays new physical_task without reloading page", js: true do
#   user = FactoryGirl.create(:user)
#   week = FactoryGirl.create(:week)
#   visit '/'
#   fill_in "Email", with: "user1@user.com"
#   fill_in "Password", with: "password"
#   click_button "Log in"
#   visit 'weeks/1'
#   click_button "Add a daily physical task/goal"
#   fill_in "Description"
#   with "nasal spray"
#   click_button "Create Physical task"
#   page.should have_content("Delete")
#   end
end
