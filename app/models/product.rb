class Product < ApplicationRecord
    belongs_to :category
    has_one_attached :image
    scope :featured, -> { where(featured: true) }
    has_many :orders_items

end
