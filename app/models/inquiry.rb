class Inquiry < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :purpose, presence: true
	validates :email, presence: true
	validates :budget, presence: true
end
