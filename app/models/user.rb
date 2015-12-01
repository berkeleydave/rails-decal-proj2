class User < ActiveRecord::Base
  belongs_to: location
  validates :phone, uniqueness: true
  validates :phone, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :sex, presence: true
end
