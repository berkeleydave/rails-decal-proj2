class Group < ActiveRecord::Base
  has_many :user
  belongs_to :location
  validates :name, presence: true
  validates :name, uniqueness: true
end
