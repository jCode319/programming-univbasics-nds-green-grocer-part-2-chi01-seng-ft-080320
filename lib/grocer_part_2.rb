require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # REMEMBER: This method **should** update cart
  #binding.pry
  i = 0
  while i < coupons.length
    cart_item = find_item_by_name_in_collection(coupon[i][:item], cart)
    coupon_item = "#{coupon[i][:item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(coupon_item, name)
    if cart_item && cart_item[:count] >= coupon[i][:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += coupon[i][:num]
        cart_item[:count] -= coupon[i][:num]
      else
        cart_item_with_coupon = {
          :item => coupon_item,
          :price => coupon[i][:cost] / coupon[i][:num],
          :count => coupon[i][:num],
          :clearance => cart_item[:clearance]
        }
          cart << cart_item_with_coupon
          cart_item[:count] -= coupon[i][:num]
      end
    end
    i += 1
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
