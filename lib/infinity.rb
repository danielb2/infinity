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
      return 0 if obj == 0 or obj == 0.0
      return nil if obj == nil
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
