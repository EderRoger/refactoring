require 'spec_helper'

describe Customer do

  let(:rental_1) do
   Rental.new(Movie.new("Spider Man", Movie::REGULAR),3)
  end

  let(:rental_2) do
    Rental.new(Movie.new("Theory of Everything", Movie::NEW_RELEASE),4)
  end

  let(:rental_3) do
    Rental.new(Movie.new("Tanged", Movie::CHILDRENS),5)
  end

  it 'check statement result rental movies list' do
   customer =  Customer.new("Eder Roger")
   customer.add_rental(rental_1)
   customer.add_rental(rental_2)
   customer.add_rental(rental_3)
   result = customer.statement
   puts result
   expect(result).to include("You earned 4 frequent renter points")
  end
end
