class Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Order

  def initialize(customer_name)
    @customer = Customer.new(customer_name)
  end

  def customer=(customer_name)
    Customer.new(customer_name)
  end

  def customer_name
    @customer.name
  end

  private

  def self.number_of_orders_for(orders, customer)
    orders.select { |order| order.customer_name == customer_name }.size
  end
end

# after refacs
class Customer
  def self.create(name)
    Customer.new(name)
  end
end

class Order
  def initialize(customer_name)
    @customer = Customer.create(customer_name)
  end
end

# another refac
class Customer

  def self.with_name(name)
    Instances[name]
  end

  def self.load_customers
    new("Lemon Car hire").store
    new("Associate coffe machines").store
    new("Bilston Gasworks").store
  end

  def store
    Intances[name] = self
  end
end
