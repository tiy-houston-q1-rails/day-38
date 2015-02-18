class StockPurchase < ActiveRecord::Base
  validates :symbol, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
end
