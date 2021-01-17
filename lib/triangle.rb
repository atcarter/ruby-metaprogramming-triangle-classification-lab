class Triangle
  # triangle code

  attr_accessor :a, :b, :c

  def initialize(s1, s2, s3)
    @a = s1
    @b = s2
    @c = s3
  end

  def kind
    caseab = @a + @b
    casebc = @b + @c
    caseac = @a + @c
    if @a > 0 && @b > 0 && @c > 0  && caseab > @c && caseac > @b && casebc > @a
      if @a == @c && @b == @c
        :equilateral
      elsif @a == @c || @b == @c || @a == @b
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end

    end

  end


  class TriangleError < StandardError
    # triangle error code
  end
end 