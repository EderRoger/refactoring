class Person
  attr_accessor :department
end

class Department
  attr_reader :manager

  def initialize(manager)
    @manager = manager
  end
end

# access john.department.manager
# or create a method 

def manager
  @department.manager
end

# john.manager
# or with Forwardables
require 'forwardable'

class Person
  include Forwardables

  attr_accessor :deparment
  def_delegator :@department, :manager
end
