class Infinity
  module Methods
    def +(obj)
      self
    end
    def -(obj)
      return 0 if obj == Infinity
      return 0 if obj.kind_of? Infinity
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
      return false if obj == Infinity
      return false if obj.kind_of? Infinity
      true
    end
    def <(obj)
      return false if obj == Infinity
      return false if obj.kind_of? Infinity
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
