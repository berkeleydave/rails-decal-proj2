class Group < ActiveRecord::Base
  has_many :users
  belongs_to :location
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :address, presence: true
  
  geocoded_by :address
  after_validation :geocode

end
