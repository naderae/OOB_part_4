
class Farm
  @@total_food = []

  def harvest

end


class Field(type, total_area)
  @type = type
  @total_area = total_area

  def type
    @type
  end

  def total_area
    @total_area
  end

end


class Corn < Field

def initialize(type, total_area)
  super(type, total_area)

end


end


class Wheat <Field
  def initialize(type, total_area)

  end

end
