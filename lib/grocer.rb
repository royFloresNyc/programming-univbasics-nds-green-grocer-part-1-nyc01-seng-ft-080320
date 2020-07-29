def find_item_by_name_in_collection(name, collection)
  collection.each { |product| 
    if product[:item] == name  
      return product 
    end
  }
  nil 
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |product|
    if find_item_by_name_in_collection(product, consolidated_cart) do 
      product[:count] += 1 
    else
      product[:count] = 1 
      consolidated_cart << product
    end 
  end 
  consolidated_cart
end


  