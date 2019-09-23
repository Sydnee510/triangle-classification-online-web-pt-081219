# class Triangle
#   attr_accessor :equilateral, :isosceles, :scalene
#   def initialize
#   end 
#   # write code here
#   # class TriangleError < StandardError
#   # end
# end
# class Triangle
#   def initialize(side_1,side_2,side_3)
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#   end

#   def kind()
#     if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
#       raise TriangleError
#     elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
#       raise TriangleError
#     else
#       if (@side_1 == @side_2) && (@side_2 == @side_3)
#         :equilateral
#       elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
#         :isosceles
#       elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
#         :scalene
#       end
#     end

#   end

# end

# class TriangleError < StandardError
#   # triangle error code
# end
# class Triangle
#   attr_accessor :x, :y, :z
#   def initialize(x, y, z)
#     @x = x
#     @y = y
#     @z = z
#   end

#   def kind
#     if kosher_triangle == true && kosher_triangle2 == true 
#       puts true 
#     else 
#       raise TriangleError 
#     end 
    
#     if x == y && y == z && x == z
#       :equilateral
#     elsif x != y && y != z && z != x
#       :scalene 
#     else 
#       :isosceles
#     end 
#   end
  
#   def kosher_triangle 
#     x.positive? && y.positive? && z.positive?
#   end 
  
#   def kosher_triangle2 
#     x + y > z && x + z > y && y + z > x
#   end 
# end

# class TriangleError < StandardError
  
# end

# a = Triangle.new(5, 5, 5)
# a.kind
class Triangle
  def initialize(side_1, side_2, side_3)
    @triangle_sides = []
    @triangle_sides << side_1
    @triangle_sides << side_2
    @triangle_sides << side_3
  end

  def valid?
    sum_one_two = @triangle_sides[0] + @triangle_sides[1]
    sum_one_three = @triangle_sides[0] + @triangle_sides[2]
    sum_two_three = @triangle_sides[1] + @triangle_sides[2]

    if (@triangle_sides.none? {|side| side <= 0}) &&
      (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
      return true
    else
      return false
    end
  end

  def kind
    if valid?
      if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
        return :isosceles