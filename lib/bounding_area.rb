require_relative "bounding_box"
require "pry"

class BoundingArea
  def initialize(array_of_boxes = nil)
    @array_of_boxes = array_of_boxes
  end

  def empty?
    if @array_of_boxes.count == 0
      @rez = true
    end
    @rez
  end

  def contains_point?(x, y)
    if empty?
      @res = false
    else
      @res = false
      @array_of_boxes.each do |box|
        if box.contains_point?(x,y)
          @res = true
        end
      end
    end
    @res
  end

end

