class Person
  attr_accessor :name

  def greeting
    puts "Hi! My name is #{name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an object."
  end
end

chris = Instructor.new
chris.name = "Chris"
chris.greeting
chris.teach

cristina = Student.new
cristina.name = "Cristina"
cristina.greeting
cristina.learn

#chris.learn
# outputs person.rb:31:in `<main>': undefined method `learn' for #<Instructor:
# 0x007ff3b4055960 @name="Chris"> (NoMethodError)

#cristina.teach
# outputs person.rb:34:in `<main>': undefined method `teach' for #<Student:
# 0x007fa8da115898 @name="Cristina"> (NoMethodError)
