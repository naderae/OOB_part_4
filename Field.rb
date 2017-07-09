
class Field

  attr_accessor :type, :total_area, :yield

  @@fields = []
  @@total_yield = 0



  def initialize(type, total_area)
    @type = type
    @total_area = total_area
  end

  def self.relax

     total_area_corn = 0
     total_area_wheat = 0

    @@fields.each do |field|
      if field.type == "corn"
        total_area_corn += field.total_area

      elsif field.type == "wheat"
        total_area_wheat += field.total_area
      end
    end

    puts "#{total_area_corn} hectares of tall green stalks rustling in the breeze fill your horizon\nThe sun hangs low, casting an orange glow on a sea of #{total_area_wheat} hectares of wheat."
  end

  def self.status
    @@fields.each do |field|
      puts "#{field.type} field is #{field.total_area} hectares"
    end
    puts "The farm has #{@@total_yield} harvested so far"
  end


  def self.all
    @@fields
  end



  def self.harvest

    @@fields.each do |field|
      food = field.yield
      type_of_field = field.type
      size_of_field = field.total_area
      puts "Harvesting #{food} food from #{size_of_field} hectare #{type_of_field} field"
    end

      @@fields.each do |field|
        @@total_yield += field.yield
      end
      puts "The farm has #{@@total_yield} harvested so far"
  end
end






class Corn < Field

  def initialize(type, total_area)
    super(type, total_area)
    @yield = total_area * 20
  end

  def self.create(type, total_area)
    corn_field = Corn.new(type, total_area)
    @@fields.push(corn_field)
  end
end


class Wheat < Field

  def initialize(type, total_area)
    super(type, total_area)
    @yield = total_area * 30
  end

  def self.create(type, total_area)
    wheat_field = Wheat.new(type, total_area)
    @@fields.push(wheat_field)
  end
end



corn_field_1 = Corn.create("corn", 50)
corn_field_2 = Corn.create("corn", 50)

wheat_field_1 = Wheat.create("wheat", 50)
wheat_field_2 = Wheat.create("wheat", 50)


puts Field.all


Field.harvest
Field.status
