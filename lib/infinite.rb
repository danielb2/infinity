class Infinite
  module Methods
    def +(obj)
      self
    end
    def -(obj)
      self
    end
    def /(obj)
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
      "Infinite"
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

class TC_Infinite < Test::Unit::TestCase
  def test_arithmatic
    assert_equal(Infinite, (Infinite + 23))
    assert_equal(Infinite, (Infinite - 23))
    assert_equal(Infinite, (Infinite / 23))
    assert_equal(Infinite, (Infinite * 23))
  end

  def test_comparable
    assert(Infinite > 23)
    assert_equal(false, Infinite < 23)
    assert(Infinite == Infinite)
  end

  def test_string
    assert_equal("Infinite", "#{Infinite}")
    assert_equal("Infinite", Infinite.to_s)
  end

end
