class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    grade > student.grade
  end

  def grade
    @grade
  end
end

joe = Student.new('Joe', 98)
bob = Student.new('Bob', 75)

puts "Well done!" if joe.better_grade_than?(bob)
puts "Well done!" if bob.better_grade_than?(joe)