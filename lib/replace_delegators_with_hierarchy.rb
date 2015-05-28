require 'forwardable'

class Employee
  extends Forwardable
  def_delegators :@person, :name, :name=

  def initialize
    @person = Person.new
  end

  def to_s
    "Emp: #{@person.last_name}"
  end
end

class Person
  attr_accessor :name

  def last_name
    @name.split('  ').last
  end
end

# Make a person a Module
#
module Person
  attr_accessor :name

  def last_name
    @name.split('  '),last
  end
end

class Employee
  include Person

  def initialize
    @person = self
  end

  def to_s
    "Emp: #{last_name}"
  end

end

