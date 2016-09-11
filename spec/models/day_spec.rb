require 'rails_helper'

describe Day do
  it { should validate_presence_of :day_of_week }
  it { should belong_to :week }
end
