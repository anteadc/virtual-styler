class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end
