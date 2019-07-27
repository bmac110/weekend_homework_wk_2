require('minitest/autorun')
require('minitest/rg')
require_relative('../bar_tab.rb')
require_relative('../drink.rb')

class BarTabTest < MiniTest::Test
  def setup()
    @bartab = BarTab.new("Jimmy's Tab", 0)
    @drink = Drink.new("Jack Daniels", 5)
    @drink2 = Drink.new("Captain Morgans", 4)
  end

  def test_tab_has_name()
    assert_equal("Jimmy's Tab", @bartab.name)
  end

  def test_add_drink_to_tab()
    @bartab.add_drink_to_tab(@drink)
    @bartab.add_drink_to_tab(@drink2)
    assert_equal(9, @bartab.total)
    assert_equal(2, @bartab.items_in_tab)
  end

end
