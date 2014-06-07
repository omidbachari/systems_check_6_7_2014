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
