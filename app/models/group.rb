class Group < ActiveRecord::Base
  has_many :users
  belongs_to :location
  validates :name, presence: true
  validates :name, uniqueness: true
end
