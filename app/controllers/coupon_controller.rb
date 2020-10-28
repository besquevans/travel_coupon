class CouponController < ApplicationController
  def index
  end

  def create
    @coupon = Coupon.create(coupon_params)

    if @coupon.save
    else
    end
  end

  private

  def coupon_params
    params.require(:coupon).permit(:name, :id_number, :phone)
  end
end
