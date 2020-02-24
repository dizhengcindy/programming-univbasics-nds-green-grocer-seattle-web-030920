def find_item_by_name_in_collection(name, collection)
 
  index = 0 
  while index < collection.length do 
    if  collection[index][:item] == name
      return collection[index]
    end
    index += 1 
  end
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  newCart = []
  index = 0 
   while index < cart.length do 
     
     name = cart[index][:item]
     newCart_item =  find_item_by_name_in_collection(name,newCart)
     if newCart_item 
       newCart_item[:count] += 1
       
     else
        newCart_item ={
          :item => name,
          :price => cart[index][:price],
          :clearance => cart[index][:clearance],
          :count => 1
        }
        newCart << newCart_item
      end
    index += 1 
    end
    newCart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  newCart = []
  index
  while index < 0 do 
    name = cart[index][:item]
    item = find_item_by_name_in_collection(name,coupons)
     if item && coupons[:num] <= cart[index][:count]
        item_coupon = coupons[]
       
     else
      newCart << cart[index]
     end
    index += 1 
  
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
