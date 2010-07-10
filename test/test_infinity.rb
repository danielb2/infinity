require 'helper'

class TestInfinity < Test::Unit::TestCase
  should "test arithmatic" do
    assert_equal(Infinity, (Infinity + 23))
    assert_equal(Infinity, (Infinity - 23))
    assert_equal(Infinity, (Infinity / 23))
    assert_equal(Infinity, (Infinity * 23))
    assert_equal(1, (Infinity / Infinity))
    assert_equal(1, (Infinity.new / Infinity))
    assert_equal(1, (Infinity.new / Infinity.new))
    assert_equal(0, Infinity * 0)
    assert_equal(nil, Infinity * nil)
  end

  should "test comparable" do
    assert(Infinity > 23)
    assert_equal(false, Infinity < 23)
    assert(Infinity == Infinity)
  end

  should "test string" do
    assert_equal("Infinity", "#{Infinity}")
    assert_equal("Infinity", Infinity.to_s)
  end

  context "zero" do
    should "divide by zero" do
      assert_equal(Infinity, 9/0)
      assert_equal(Infinity, 9.0/0)
    end
  end
end
