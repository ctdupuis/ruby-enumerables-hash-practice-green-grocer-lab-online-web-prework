require 'pry'

def consolidate_cart(cart)
  final_hash = {}
  cart.each do |elm_hash|
    elm_name = elm_hash.keys[0]
    elm_stats = elm_hash.values[0]
    
    if final_hash.has_key?(elm_name)
      final_hash[elm_name][:count] += 1
    else
      final_hash[elm_name] = {
        count: 1, 
        price: elm_hash[elm_name][:price],
        clearance: elm_hash[elm_name][:clearance]
      }
    end
  end
  final_hash
end

# def apply_coupons(cart, coupons)
#   coupons.each do |coupon|
#     item = coupon[:item]
#     if cart.has_key?(item)
#       if cart[item][:count] >= coupon[:num] && !cart.has_key?("#{item} W/ COUPON")
#         cart["#{item} W/COUPON"] = {price: coupon[:cost] / coupon[:num], clearance: cart[item][:clearance], count: coupon[:num]}
#       elsif cart[item][:count] >= coupon[:num] && cart.has_key?("#{item} W/ COUPON")
#         cart["#{item} W/COUPON"][:count] += coupon[:num]
#       end
#         cart[item][:count] -= coupon [:num]
#     end
#   end
#   cart
# end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
