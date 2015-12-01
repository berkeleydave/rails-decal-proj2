class Pokemon < ActiveRecord::Base
	belongs_to :trainer
	validates :name, uniqueness: true
	validates :name, presence: true
end