require 'rails_helper'

describe "the edit a week process" do
  it "edits a week" do
    user = FactoryGirl.create(:user)
    week = FactoryGirl.create(:week)
    visit week_path(week)
    login_as(user, :scope => :user)
    visit week_path(week)
    click_on 'Edit'
    fill_in 'Date', :with => '2016/09/25'
    click_on 'Update Week'
    expect(page).to have_content '2016-09-25'
  end

  it "gives error when no date is entered" do
    user = FactoryGirl.create(:user)
    week = FactoryGirl.create(:week)
    visit week_path(week)
    login_as(user, :scope => :user)
    visit week_path(week)
    click_on 'Edit'
    fill_in 'Date', :with => ''
    click_on 'Update Week'
    expect(page).to have_content 'errors'
  end


  it "deletes a week" do
    user = FactoryGirl.create(:user)
    week = FactoryGirl.create(:week)
    visit week_path(week)
    login_as(user, :scope => :user)
    visit week_path(week)
    click_on 'Delete'
    expect(page).to have_no_content '2016/09/25'
  end
end
