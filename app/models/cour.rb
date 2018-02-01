class Cour < ApplicationRecord
	has_many :lecon, dependent: :destroy

	validates :title, presence: true
	validates :description, presence: true
end
