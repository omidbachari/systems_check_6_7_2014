class BoundingBox
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
