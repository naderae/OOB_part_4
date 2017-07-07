class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end
end





class Student < Person


  def learn
    puts "I get it!"
  end

end


class Instructor < Person

  def teach
    puts "Everything in Ruby is an object"
  end

end

chris = Instructor.new("Chris")
chris.greeting
christina = Student.new("Christina")
christina.greeting

chris.teach


class Instructor < Person

  def teach
    puts "Everything in Ruby is an object"
  end

end

chris = Instructor.new("Chris")
chris.greeting
christina = Student.new("Christina")
christina.greeting

chris.teach
christina.learn

christina.teach
# this doesnt work because christina is not an Instructor, which is the class that includes the teach method.
# to make it work, you can create a teach class in the class person.
