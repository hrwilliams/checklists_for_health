require 'rails_helper'

describe Week do
  it { should validate_presence_of :date }
  it { should have_many :days}
  it { should belong_to :user }
end
