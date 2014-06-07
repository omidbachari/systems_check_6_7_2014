require_relative "bounding_box"

class BoundingArea
  def initialize(box_1, box_2 = nil, box_3 = nil, box_4 = nil, box_5 = nil)
    @box_1 = box_1
    @box_2 = box_2
    @box_3 = box_3
    @box_4 = box_4
    @box_5 = box_5
  end

  def contains_point?(x, y)

  end

end


# Create a BoundingArea class that represents a collection of individual bounding boxes. It should implement the following method:

# contains_point?(x, y) returns true if the given (x, y) coordinate is contained within any of the bounding boxes for this area.
