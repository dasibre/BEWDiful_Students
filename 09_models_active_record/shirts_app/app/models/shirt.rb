class Shirt < ActiveRecord::Base
	attr_accessible :name, :description

	validates :name, presence: true
end
