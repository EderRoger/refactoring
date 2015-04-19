class ExtractMethod

  def print_owing
    outstanding = 0.0

    pritn_banner

    #calculate stading
    @order.each do |order|
      outstanding += order.amount
    end

    print_details outstading

    def print_details(outstanding)
      puts "name: #{@name}"
      puts "amount: #{@outstading}"
    end

end

