require 'test/unit'
require "#{File.dirname(__FILE__)}/../lib/encapsulate_as_money"

class Base
  include EncapsulateAsMoney
  attr_accessor :cost, :discount
end

class Product < Base
  encapsulate_as_money :cost, :discount
end

class EncapsulateAsMoneyTest < Test::Unit::TestCase
  
  def test_can_use_money_function
    assert_equal Money.new(10_00), Money(10_00)
  end
  
  def test_can_parse_money_from_string
    assert_equal Money(10_00), Money("$10.00")
    assert_equal Money(10_00), Money("10.00")
    assert_equal Money(10_00), Money("$10")
    assert_equal Money(10_00), Money("10")
    assert_equal Money(10000_00), Money("$10,000.00")
  end
  
  def test_encapsulation_of_cost_and_discount
    p = Product.new
    p.cost = Money(5_00)
    p.discount = Money(1_00)
    assert_equal Money(5_00), p.cost
    assert_equal Money(1_00), p.discount
  end
  
  def test_formats_money_with_commas_awesome
    assert_equal '$10.00', Money(10_00).format
    assert_equal '$100.00', Money(100_00).format
    assert_equal '$1,000.00', Money(1000_00).format
    assert_equal '$10,000.00', Money(10000_00).format
    assert_equal '$100,000.00', Money(100000_00).format
    assert_equal '$1,000,000.00', Money(1000000_00).format
    assert_equal '$10,000,000.00', Money(10000000_00).format
  end
  
end
