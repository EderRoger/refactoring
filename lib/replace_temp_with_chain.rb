class Select
  def options
    @options ||= []
  end

  def add_options(arg)
    options << arg
  end
end

select = Select.new
select.add_option(1999)
select.add_option(2000)
select.add_option(2001)
select.add_option(2002)
#select # => #<Select:0x28708 @options=[1999, 2000, 2001, 2002]>
#refac
class Select
  def self.with_option(option)
    select = self.new
    select.option << option
    select
  end

  def add_options(arg)
    options << arg
  end
end

select = Select.with_option(1999)
select.add_option(2000)
select.add_option(2001)
select.add_option(2002)
#select # => #<Select:0x28488 @options=[1999, 2000, 2001, 2002]>

#add return self
class Select
  def self.with_option(option)
    select = self.new
    select.option << option
    select
  end

  def add_options(arg)
    options << arg
    self
  end
end
#you can chain
select = Select.with_option(1999).add_option(2000).add_option(2001).add_option(2002)

#chang method name
class Select
  def self.with_option(option)
    select = self.new
    select.option << option
    select
  end

  def options
    @options ||= []
  end

  def and(arg)
    options << arg
    self
  end
end

select = Select.with_option(1999).and(2000).and(2001).and(2002)
#select # => #<Select:0x28578 @options=[1999, 2000, 2001, 2002]>
