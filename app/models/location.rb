class Location < ActiveRecord::Base
  validates :name, uniqueness: true
	validates :name, presence: true
  has_many: user
  has_many: poi
end
