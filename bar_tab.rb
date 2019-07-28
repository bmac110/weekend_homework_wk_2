class BarTab

  attr_accessor :total
  attr_reader :name

  def initialize(name, total)
    @name = name
    @total = total
    @items = []
  end

  def items_in_tab()
    @items.count()
  end

  def add_drink_to_tab(drink)
    @total += drink.price
    @items.push(drink)
  end


  def guest_pays_for_tab(customer, bartab)
    if customer.cash >= bartab.total
      customer.cash -= bartab.total
      @items.clear()
      bartab.total = 0

    end


  end

end
