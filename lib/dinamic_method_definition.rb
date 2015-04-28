def failure
  self.state = :failure
end

def error
  self.state = :error
end

def success
  self.state = :success
end

[:failure, :error, :success].each do |method|
  define_method method do
    self.state = method
  end
end


class Class
  def def_each(*method_names, &block)
    method_names.each do |method_name|
      define_method method_name do
        instance_exec method_name, &block
      end
    end
  end
end

#more expressive code
class Post
  def self.states(*args)
    args.each do |arg|
      define_method arg do
        self.state = arg
      end
    end
  end
  states :failure, :error, :success
end
