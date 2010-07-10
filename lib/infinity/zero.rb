require 'infinity'
class Fixnum
  alias_method "__divide", "/"
  def /(num)
    return Infinity if num == 0
    self.__divide(num)
  end
end
class Float
  alias_method "__divide", "/"
  def /(num)
    return Infinity if num == 0
    self.__divide(num)
  end
end
