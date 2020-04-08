class Triangle
  attr_reader :sideA, :sideB, :sideC

  def initialize(a, b, c)
    @sideA = a
    @sideB = b
    @sideC = c

  end

  def kind
    if sideA <= 0 || sideB <= 0|| sideC <= 0
      raise TriangleError
      return nil
    end

    if ((sideA + sideB) > sideC) && ((sideA + sideC) > sideB) && ((sideB + sideC) > sideA)

      if sideA == sideB && sideB == sideC
        return :equilateral

      elsif sideA == sideB || sideA == sideC || sideB == sideC
        return :isosceles

      else
        return :scalene
      end

    else 
      raise TriangleError       
    end
  end

  class TriangleError < StandardError
  end
end
