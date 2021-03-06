class Product < ApplicationRecord
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :image_url, allow_blank: true, format: {
		with: %r{.(gif|png|jpg)\Z}i,
		message: 'Must be a URL for a gif, JPG, or PNG image'
	}

	validates :title, uniqueness: true

end

