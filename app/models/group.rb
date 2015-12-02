class Group < ActiveRecord::Base
  has_many :user
  belongs_to :location
end
