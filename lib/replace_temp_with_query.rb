base_price = @quantity * @item_price

if(base_price > 1000)
  base_price * 0.95
else
  base_price * 0.98
end

#refac Extract expression in to a method
if(base_price > 1000)
  base_price * 0.95
else
  base_price * 0.98
end

def base_price
  @quantity * @item_price
end

#other example
def price
  base_price = @quantity * @item_price
  if base_price > 1000
    discount_factor = 0.95
  else
    discount_factor = 0.98
  end
  base_price * discount_factor
end
#####
def price
 # a_base_price = base_price
  if base_price > 1000
    discount_factor = 0.95
  else
    discount_factor = 0.98
  end
  base_price * discount_factor
end

def base_price
  @quantity * @item_price
end
# refac
def price
  a_discount_factor = discount_factor
  base_price * a_discount_factor
end

def a_discount_factor
  base_price > 1000 ? 0.95 : 0.98
end
