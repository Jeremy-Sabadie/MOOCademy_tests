class Lecon < ApplicationRecord
	belongs_to :cour

	validates :title, presence: true
	validates :body, presence: true
	
end
