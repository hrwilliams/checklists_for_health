class Week < ActiveRecord::Base
  has_many :days
  validates :date, :presence => true
end
