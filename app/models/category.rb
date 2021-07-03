class Category < ApplicationRecord
    has_many :products
    has_many :featured_products, -> { Product.featured }, class_name: 'Product', inverse_of: :category
end
