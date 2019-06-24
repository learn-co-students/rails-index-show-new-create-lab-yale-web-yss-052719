class CouponsController < ApplicationController

    def view
        @coupons = Coupon.all
        render :'coupons/index.html.erb'
    end

    def show
        @coupon = Coupon.find_by(id: params[:id])
        render :'/coupons/show.html.erb'
    end

    def new
        render :'/coupons/new.html.erb'
    end

    def create
        @a = Coupon.create(coupon_code: params["coupon"]["coupon_code"], store: params["coupon"]["store"])
        redirect_to("/coupons/#{@a.id}")
    end


end