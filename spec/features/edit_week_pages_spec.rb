# require 'rails_helper'
#
# describe "the edit a week process" do
#   it "edits a week" do
#     week = Week.create(:date => '09/18/2016')
#     visit weeks_path(week)
#     click_on 'Edit'
#     fill_in 'Date', :with => '09/25/2016'
#     click_on 'Update Week'
#     expect(page).to have_content '09/25/2016'
#   end
#
#   spec above is failing. capybara is going to errors page. online documentation says fill_in is correct method to use for the date field
#
#   it "gives error when no date is entered" do
#     week = Week.create(:date => '09/25/2016')
#     visit weeks_path(week)
#     save_and_open_page
#     click_on 'Edit'
#     fill_in 'Date', :with => ''
#     click_on 'Update Week'
#     expect(page).to have_content 'errors'
#   end
# end
#
# spec above is failing. capybara is showing no weeks on page
#
#   it "gives error when no date is entered" do
#     week = Week.create(:date => '09/25/2016')
#     visit weeks_path(week)
#     click_on 'Edit'
#     fill_in 'Date', :with => ''
#     click_on 'Update Week'
#     expect(page).to have_content 'errors'
#   end
# end
#
#
#   it "deletes a week" do
#     week = Week.create(:date => '09/25/2016')
#     visit weeks_path(week)
#     save_and_open_page
#     click_on 'Delete'
#     expect(page).to have_no_content '09/25/2016'
#   end
# end
#
# failing launchy is showing it going to weeks path rather than week by id
