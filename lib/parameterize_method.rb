class Employe
  def ten_percent_raise
    @salary *= 1.1
  end

  def five_percent_raise
    @salary *= 1.05
  end
end

# can be replaced by

def raise(factor)
  @salary *= (1 + factor)
end
