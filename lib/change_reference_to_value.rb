class Customer

  attr_reader :name
  Instances = {}

  def initialize(name)
    @name = name
  end

  def self.load_customers
    new("Lemon hair care").store
    new("Eder Roger").store
    new("Julo Huis").store
  end

  def store
    Instances[name] = self
  end

  def self.with_name(name)
    Instances[name]
  end
end
