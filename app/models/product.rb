class Product < ApplicationRecord
  belongs_to :shopkeeper

  enum type: {product: 0, offer: 1, coupon: 2}
end
