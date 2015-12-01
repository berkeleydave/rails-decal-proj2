class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable
	belongs_to :location
	
	# attr_accessible :email, :password, :password_confirmation, :remember_me

	validates :name, presence: true

	validates :email, uniqueness: true
	validates :email, presence: true

	validates :phone, uniqueness: true
	validates :phone, presence: true
end
