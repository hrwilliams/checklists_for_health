class Day < ActiveRecord::Base
  belongs_to :week

  validates :day_of_week, :presence => true
end
