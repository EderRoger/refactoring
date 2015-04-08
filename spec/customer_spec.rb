require 'spec_helper'

describe Customer do

  let(:rental_1) do
   Rental.new(Movie.new("Spider Man", RegularPrice.new),3)
  end

  let(:rental_2) do
    Rental.new(Movie.new("Theory of Everything", NewReleasePrice.new),4)
  end

  let(:rental_3) do
    Rental.new(Movie.new("Tanged", ChildrensPrice.new),5)
  end

  it 'check statement result rental movies list' do
   customer =  Customer.new("Eder Roger")
   customer.add_rental(rental_1)
   customer.add_rental(rental_2)
   customer.add_rental(rental_3)
   result = customer.statement
   expect(result).to include("You earned 4 frequent renter points")
  end
end
