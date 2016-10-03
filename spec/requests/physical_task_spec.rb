require 'spec_helper'

describe 'PhysicalTasks' do
  it 'validates description' do
    visit new_week_physical_task_path
    fill_in "Description", with ""
    page.should have_content("Description can't be blank")
  end
end
