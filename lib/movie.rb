require 'new_release_price'
require 'regular_price'
require 'childrens_price'

class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title, :price_code

  def initialize(title, the_price_code)
    @title, self.price_code = title, the_price_code
  end

  def price_code=(value)
    @price_code = value
  end

  def charge(days_rented)
    @price_code.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    @price_code.frequent_renter_points(days_rented)
  end
end
