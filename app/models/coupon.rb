class Coupon < ApplicationRecord
  validates :name, presence: true
  validates :id_number, presence: true
  validates :phone, presence: true

  before_create :check_id_number

  def check_id_number
    self.id_number.match? /^[A-Z]\d{9}$/
  end
end
