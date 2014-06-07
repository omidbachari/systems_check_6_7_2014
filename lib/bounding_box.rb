class BoundingBox
attr_reader :left_longitude, :bottom_latitude, :width, :height
  def initialize(left_longitude, bottom_latitude, width, height)
    @left_longitude = left_longitude.to_f
    @bottom_latitude = bottom_latitude.to_f
    @width = width.to_f
    @height = height.to_f
  end

  def top
    @top = @bottom_latitude + @height
    @top
  end

  def right
    @right = @left_longitude + @width
    @right
  end

  def bottom
    @bottom_latitude
  end

  def left
    @left_longitude
  end

  def contains_point?(x,y)
    if x >= left && x <= right && y >= bottom && y <= top
      @result = true
    else
      @result = false
    end
    @result
  end

end


# Create a BoundingBox class to represent the rectangle. It should implement the following methods:

# width returns the width of the box.
# height returns the height of the box.
# left returns the left edge of the box.
# right returns the right edge of the box.
# top returns the top edge of the box.
# bottom returns the bottom edge of the box.
# contains_point?(x, y) returns true if the given (x, y) coordinate is within the box.
# Use a Cartesian coordinate system where values along the x axis increase moving to the right and values along the y axis increase moving up.

# One basic scenario would be to check whether a given (x, y) coordinate is overlapping with some object. A simple technique is to wrap the entire object in a rectangle called a bounding box and then check whether the point is located within that box. A point is overlapping as long as it meets the following conditions:

# The x coordinate is greater than or equal to the left edge of the box.
# The x coordinate is less than or equal to the right edge of the box.
# The y coordinate is greater than or equal to the bottom edge of the box.
# The y coordinate is less than or equal to the top edge of the box.
