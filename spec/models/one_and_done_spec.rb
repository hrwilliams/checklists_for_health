require 'rails_helper'

describe OneAndDone do
  it { should validate_presence_of :description }
  it { should belong_to :week }
end
