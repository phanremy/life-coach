class DanceCalendar < ApplicationRecord
  belongs_to :user
  has_many :dance_dates
end
