require 'spec_helper'

describe 'PhysicalTasks' do
  it 'validates description' do
    visit new_week_path
    click_link "Start a New Week"
    fill_in "Description", with: ""
    page.should have_content("Description can't be blank")
  end
end
