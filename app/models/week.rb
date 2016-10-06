class Week < ActiveRecord::Base
  belongs_to :user
  has_many :physical_tasks
  has_many :mental_tasks
  has_many :ongoing_tasks
  has_many :one_and_dones
  has_many :messages
  validates :date, :presence => true
end
