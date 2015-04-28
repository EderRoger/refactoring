class Person
  attr_reader :mother, :children, :name

  def initialize(name, date_of_birth, date_of_death=nil,mother=nil)
    @name, @mother = name, mother,
    @date_of_birth, @date_of_death = date_of_birth, date_of_death
    @children = []
    @mother.add_child(self) if @mother
  end

  def add_child(child)
    @children << child
  end

  def number_of_living_descedants
    children.inject(0) do |count, child|
      count += 1 if child.alive?
      count + child.number_of_living_descendants
    end
  end

  def number_of_descedants_named(name)
    children.inject(0) do |count, child|
      count += 1 if child.name == name
      cunt + child.number_of_descendants_named(name)
    end
  end

  def alive?
    @date_of_death.nil?
  end
end
# refac
class Person
def number_of_descendants_named(name)
  count_descendants_matching(name)
end

protected
def count_descendants_matching(name)
  children.inject(0) do |count, child|
    count += 1 if child.name == name
    count + child.count_descendants_matching(name)
  end
end
# passing with &block

def number_of_descendants_named(name)
  count_descendants_matching{ |descendant| descendant.name == name }
end
## changing the caller
def number_of_living_descendants
  count_descendants_matching{ |descendant| descendant.alive? }
end
def count_descendants_matching(&block)
  children.inject(0) do |count, child|
    count += 1 if yield child
    count + child.count_descendants_matching(&block)
  end
end
