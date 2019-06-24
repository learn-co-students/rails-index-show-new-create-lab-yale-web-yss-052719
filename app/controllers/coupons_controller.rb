class CouponsController < ApplicationController

  def index
    #show all of the coupons in the db
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    #create a new coupon
    #redirect to the show page of the new coupon
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    # @coupon = Coupon.new
    # @coupon.coupon_code = params[:coupon_code]
    # @coupon.store = params[:store]
    # @coupon.save

    redirect_to coupon_path(@coupon)
  end


end
