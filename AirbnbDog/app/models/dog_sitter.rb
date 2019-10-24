class DogSitter < ApplicationRecord
	has_many :dogs, through: :strolls
	belongs_to :city, optional: true
	has_many :strolls
end
