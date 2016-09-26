require 'rails_helper'

describe PhysicalTask do
  it { should validate_presence_of :description }
  it { should belong_to :week }
end
