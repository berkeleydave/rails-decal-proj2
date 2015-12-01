class Location < ActiveRecord::Base
  validates :name, uniqueness: true
	validates :name, presence: true
  has_many: User
  has_many: poi
end
