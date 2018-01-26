class Product < ApplicationRecord
  has_many :orders

  def self.search(search_term)
    if Rails.env.development?
      Product.where("name LIKE ?", "%#{search_term}%") | Product.where("description LIKE ?", "%#{search_term}%")
    else
      Product.where("name ilike ?", "%#{search_term}%") | Product.where("description ilike ?", "%#{search_term}%")
    end
  end

end
