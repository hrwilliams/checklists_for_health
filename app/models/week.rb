class Week < ActiveRecord::Base
  belongs_to :user
  has_many :days
  validates :date, :presence => true
end
