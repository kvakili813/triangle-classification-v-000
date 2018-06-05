require 'pry'
class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
  if side_1 * side_2 * side_3 == 0 || side_1 >= (side_2 + side_3) || side_2 >= (side_1 + side_3) || side_3 >= (side_2 + side_1)
    begin
      raise TriangleError
      puts
    end
  elsif (side_1 == side_2) && (side_2 == side_3)
      :equilateral
    elsif (side_1 < side_2) && (side_2 == side_3)
      :isosceles
    elsif (side_1 == side_3) && (side_2 < side_3)
      :isosceles
    elsif (side_1 == side_2) && (side_2 > side_3)
      :isosceles
    elsif (side_1 < side_2) && (side_2 < side_3)
      :scalene
    elsif (side_1 > side_2) && (side_2 > side_3)
      :scalene
    elsif (side_1 < 1) && (side_2 < 1) && (side_3 < 1)
      :scalene


    end
  end

  class TriangleError < StandardError
  end
end
