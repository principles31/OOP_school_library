require_relative './student'

class CreateStudent
  def initialize(people)
    @people = people
  end

  def create_student_age
    print 'Enter Age: '
    print 'Age: '
    gets.chomp
  end

  def create_student_name
    print 'Enter Name: '
    gets.chomp.strip.capitalize
  end

  def create_student_permission
    print 'Does student have parent permission? (Y/N): '
    permission = gets.chomp.strip.upcase

    case permission
    when 'Y', 'YES'
      permission = true
    when 'N', 'NO'
      false

    end
    permission
  end

  @people << Student.new(create_teacher_age, create_student_name, parent_permission: create_student_permission)
  puts
  puts 'Student was created successfuly!'
end
