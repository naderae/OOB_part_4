require_relative 'field.rb'

class Farm


  def self.main_menu
    while true #always repeat this
    print_main_menu
    choice = gets.to_i
    take_to_choice(choice)
    end
  end



  def self.print_main_menu
    puts "Options:"
    puts "[1]field: adds a new field"
    puts "[2]Harvest: harvests crops and adds to total harvested"
    puts "[3]Status: displays some information about the farm"
    puts "[4]relax: provides lovely descriptions of your fields"
    puts "[5]exit: exits the program"
  end

  def self.take_to_choice(number_selected)
    case number_selected
    when 1 then field
    when 2 then harvest
    when 3 then status
    when 4 then relax
    when 5 then exit_program
    end
  end

  def self.field
    puts "What kind of field is it: corn or wheat?"
    field_type = gets.chomp
    puts "How large is the field in hectares?"
    field_size = gets.to_i
    if field_type == "corn"
      Corn.create(field_type, field_size)
    elsif field_type == "wheat"
      Wheat.create(field_type, field_size)
    else
      puts "Invalid Entry"
      main_menu
    end
    puts "Added a #{field_type} field of #{field_size} hectares!"
  end

  def self.harvest
    Field.harvest
  end

  def self.status
    Field.status
  end

  def self.relax
    Field.relax
  end

  def self.exit_program
    exit
  end



end


Farm.main_menu
