class ProblemCase < ApplicationRecord
  belongs_to :case_type
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
  belongs_to :user, optional: true
end
