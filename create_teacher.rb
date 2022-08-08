require_relative './teacher'

class CreateTeacher
  def initialize(people)
    @people = people
  end

  # Create Teacher age
  def create_teacher_age
    age = -1
    print 'Enter Age: '
    while age <= 0
      age = gets.chomp.to_i
      print 'Enter valid age for Teacher: ' if age <= 0
      age
    end
    age
  end

  # Create Teacher name
  def create_teacher_name
    print 'Enter Name: '
    gets.chomp.strip.capitalize
  end

  # Create Teacher specialization
  def create_teacher_specialization
    print 'Enter Specialization: '
    gets.chomp.strip.capitalize
  end

  @people << Teacher.new(create_teacher_age, create_teacher_name, create_teacher_specialization)
  puts ' Teacher was created successfuly! '
end
