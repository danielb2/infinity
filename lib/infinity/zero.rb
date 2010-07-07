require 'infinite'
class Fixnum
  alias_method "__divide", "/"
  def /(num)
    return Infinite if num == 0
    self.__divide(num)
  end
end
