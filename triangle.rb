# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def triangle(a, b, c)

# Removed to make cleaner code.
#  raise TriangleError  if (a<=0) || (b<=0) || (c<=0)
#  raise TriangleError if (a+b<=c) || (b+c<=a) || (a+c<=b)

  if #(a<=0) || (b<=0) || (c<=0) ||#
    (a+b<=c) || (b+c<=a) || (a+c<=b)
    raise TriangleError

  #Removed to make cleaner code.
  #elsif (a+b<=c) || (b+c<=a) || (a+c<=b)
  #  raise TriangleError

  elsif (a == b ) && (b == c) && (a == c)
    return :equilateral

  elsif (a == b) || (b == c) || (a == c)
    return :isosceles

  elsif (a > 0) && (b > 0) && (c > 0)
    return :scalene

  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
