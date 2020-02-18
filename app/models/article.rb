class Article < ApplicationRecord

	belongs_to :category

	validates_prescence_of :title
	validates_prescence_of :content

	scope :alphabetical, -> { order('title') }
	scope :active, 			 -> { where('active = ?', true) }


end
