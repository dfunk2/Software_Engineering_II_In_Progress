class Mather
  def initialize(a, b)
    @a = a
    @b = b
  end

  def sum()
    @a + @b
  end

  def difference()
    @a - @b
  end

  def quotient()
   val = @a / @b
  end
end

# val = Mather.new(2, -2)
# val.quotient