require 'rails_helper'

describe Week do
  it { should validate_presence_of :date }
  it { should belong_to :user}
  it { should have_many :physical_tasks}
  it { should have_many :mental_tasks }
  it { should have_many :ongoing_tasks }
  it { should have_many :one_and_dones }
end
