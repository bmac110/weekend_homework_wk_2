class BarTab

  attr_reader :name, :total

  def initialize(name, total)
    @name = name
    @total = 0
    @items = []
  end

  def items_in_tab()
    @items.count()
  end

  def add_drink_to_tab(drink)
    @total += drink.price
    @items.push(drink)
  end




end
