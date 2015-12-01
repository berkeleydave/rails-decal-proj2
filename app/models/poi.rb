class Poi < ActiveRecord::Base
  belongs_to: location
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :price, presence: true
  validates :interest, presence: true
end
