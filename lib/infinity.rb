class Infinity
  module Methods
    def +(obj)
      self
    end
    def -(obj)
      self
    end
    def /(obj)
      return 1 if obj == Infinity
      return 1 if obj.kind_of? Infinity
      self
    end
    def *(obj)
      self
    end
    def >(obj)
      true
    end
    def <(obj)
      false
    end
    def to_str
      "Infinity"
    end
    alias_method :to_str, :to_s
  end
  include Methods
  extend Methods
end

if $0 == __FILE__
  eval DATA.read, nil, $0, __LINE__+4
end

__END__

require 'test/unit'

class TC_Infinity < Test::Unit::TestCase
  def test_arithmatic
    assert_equal(Infinity, (Infinity + 23))
    assert_equal(Infinity, (Infinity - 23))
    assert_equal(Infinity, (Infinity / 23))
    assert_equal(Infinity, (Infinity * 23))
    assert_equal(1, (Infinity / Infinity))
    assert_equal(1, (Infinity.new / Infinity))
    assert_equal(1, (Infinity.new / Infinity.new))
  end

  def test_comparable
    assert(Infinity > 23)
    assert_equal(false, Infinity < 23)
    assert(Infinity == Infinity)
  end

  def test_string
    assert_equal("Infinity", "#{Infinity}")
    assert_equal("Infinity", Infinity.to_s)
  end

end
