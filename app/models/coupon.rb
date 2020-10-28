class Coupon < ApplicationRecord
  validates :name, presence: true
  validates :id_number, presence: true
  validates :phone, presence: true
end
